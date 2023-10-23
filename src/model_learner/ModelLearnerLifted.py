#TODO: Optimistic model generation should take into account the action params
import time
import copy
import yaml
from model_learner.constants import *
from model_learner.Utils import *
from model_learner.ModelSimulator import ModelSimulator

class ModelLearnerLifted(object):
    def __init__(self, initial_model, domain_template, problem_template, lifted_dict, plan_count=DEFAULT_PLAN_COUNT):
        self.simulator = ModelSimulator(initial_model)
        self.original_model = initial_model
        self.domain_template = domain_template
        self.problem_template = problem_template

        self.starting_model = create_empty_model(initial_model)
        # Create an optimistic version of the model
        self.current_model = create_optimistic_model(self.starting_model)
        # Make a problem file
        if DEBUG_LEVEL > 0:
            self.problem_file = "/tmp/problem.pddl"
        else:
            self.problem_file = "/tmp/problem.pddl"

        create_problem_file(self.current_model, self.problem_file, self.problem_template)

        self.original_actions = copy.deepcopy(list(self.current_model[DOMAIN].keys()))
        self.action_round_robin = copy.deepcopy(self.original_actions)
        self.action_copies = {}
        self.action_copies_count = {}
        self.action_failure_count = {}
        self.action_test_count = {}
        self.action_skip_count = {}


        with open(lifted_dict) as l_fd:
            self.lifted_dict = yaml.safe_load(l_fd)

        self.lifted_action_dict = {act:[]  for act in self.lifted_dict[LIFTED_ACTION_KEYS]}

        self.make_lifted_dict()

        self.action_skip_count[SKIP_CONST] = 0
        self.failed_precondition_dict = {act: [] for act in self.original_actions}
        self.seen_precondition_dict = {act: [] for act in self.original_actions}
        self.failed_state_dict = {act: [] for act in self.original_actions}


        self.number_of_trials = 0
        self.failure_upper_bound= FAILURE_UPPERBOUND
        self.failure_upper_bound_dict = {act: FAILURE_UPPERBOUND for act in self.original_actions}

        self.plan_count = plan_count


    def get_lifted_action_name(self, act):
        return act.split(ACT_ARG_SEPARATOR)[0]

    def make_lifted_dict(self):
        for act in self.original_actions:
            act_parts = act.split(ACT_ARG_SEPARATOR)
            for lifted_act in self.lifted_action_dict:
                if lifted_act == act_parts[0]:
                    self.lifted_action_dict[lifted_act].append(act)


    def make_lifted_effect_copy(self, act, act_defn, eff_key):

        act_parts = act.split(ACTION_PREFIX)[0].split(ACT_ARG_SEPARATOR)
        var_list = [VAR_PREFIX+str(i) for i in range(len(act_parts) - 1)]
        var_key = {act_parts[i+1]:var_list[i] for i in range(len(var_list))}
        lifted_effects = {}


        lifted_effects[eff_key] = set()
        for prop in act_defn:
            prop_parts = prop.split(PROP_ARG_SEPARATOR)
            lifted_args = []
            #print (prop)
            #TODO: A workaround to remove fluents of args not part of the aciton signature (should have happened in optimistic model creation)
            ignore_prop = False
            for obj in prop_parts[1:]:
                if obj not in var_key:
                    ignore_prop = True
                else:
                    lifted_args.append(var_key[obj])
            if not ignore_prop:
                lifted_effects[eff_key].add('_'.join([prop_parts[0]]+lifted_args))
        lifted_effects[VAR_KEY] = copy.deepcopy(var_list)

        return lifted_effects



    def get_grounded_effs(self, grounded_act, lifted_act_effect, eff_key):
        act_parts = grounded_act.split(ACTION_PREFIX)[0].split(ACT_ARG_SEPARATOR)
        var_key = {lifted_act_effect[VAR_KEY][i]: act_parts[i + 1]  for i in range(len(lifted_act_effect[VAR_KEY]))}
        grounded_act_effs = {}
        grounded_act_effs[eff_key] = set()
        for prop in lifted_act_effect[eff_key]:
            prop_parts = prop.split(PROP_ARG_SEPARATOR)
            grounded_objs = []
            for var in prop_parts[1:]:
                grounded_objs.append(var_key[var])
            grounded_act_effs[eff_key].add('_'.join([prop_parts[0]] + grounded_objs))
        return grounded_act_effs[eff_key]


    def test_all_actions(self, observation_seq, plan):
        print("Testing", plan)
        print ("PICKUP B COPIES")
        for act in self.action_copies.get('pickup_b',[]):
            print (act, "precondition:", self.current_model[DOMAIN][act][POS_PREC])


        min_model_adds = {}
        max_model_dels = {}
        min_lifted_model_adds = {}
        max_lifted_model_dels = {}
        start_time_for_actual_test = time.time()
        actions_succesfully_executed = set()
        for i in range(len(observation_seq)):
            #print("Step",i)
            plan_prefix = plan[:i]
            obs = observation_seq[i]
            for action in self.original_actions:
                next_observation, exec_status, _ = self.simulator.execute_action_at_step(action, plan_prefix)
                if action not in self.action_copies:
                    self.action_copies[action] = [action]
                    self.action_copies_count[action] = 1
                #else:
                #    print("action copied", self.action_copies)
                if exec_status:
                    actions_succesfully_executed.add(self.get_lifted_action_name(action))
                    for action_copy in self.action_copies[action]:
                        if not self.current_model[DOMAIN][action_copy][POS_PREC].issubset(obs):
                            #if 'pickup_b' in action_copy:
                            print("Removing the copy", action_copy)
                            #    print ("Precondition", self.current_model[DOMAIN][action_copy][POS_PREC])
                            #    print ("state", obs)
                            self.current_model[DOMAIN].pop(action_copy)
                            self.action_copies[action].remove(action_copy)
                            assert len(self.action_copies[action]), "something went wrong with the action removal for" + str(action)
                        #else:
                            #print("Not removing the copy", action_copy)
                    #print("Number of copies", self.action_copies[action], "for action",action)
                    if len(self.action_copies[action]) > 0:
                    #assert len(self.action_copies[action]) > 0, "Somehow all the copies got removed "+ action
                        action_copy_to_be_updated = self.action_copies[action][0]
                    else:
                        assert action in self.current_model[DOMAIN], "original action should be still there"+action
                        action_copy_to_be_updated = copy.deepcopy(action)
                    # Reset failure counter if the action succeeds even once
                    if action not in self.action_failure_count:
                        self.action_failure_count[action] = -100000
                    else:
                        self.action_failure_count[action] = -100000

                    if DEBUG_LEVEL > 10:
                        print("action: ", action_copy_to_be_updated, "original adds count: ",
                              len(self.current_model[DOMAIN][action_copy_to_be_updated][ADDS]))
                        print("action: ", action_copy_to_be_updated, "original del count: ",
                              len(self.current_model[DOMAIN][action_copy_to_be_updated][DELS]))

                    add_effects = copy.deepcopy(
                        self.current_model[DOMAIN][action_copy_to_be_updated][ADDS] - (set(self.current_model[PROP_SET])
                                                                         - next_observation))
                    del_effects = obs - next_observation
                    self.current_model[DOMAIN][action_copy_to_be_updated][ADDS] = add_effects
                    self.current_model[DOMAIN][action_copy_to_be_updated][DELS] = del_effects

                    if action not in min_model_adds:
                        min_model_adds[action] = copy.deepcopy(add_effects)
                    else:
                        if len(add_effects) < len(min_model_adds[action]):
                            min_model_adds[action] = copy.deepcopy(add_effects)

                    if action not in max_model_dels:
                        max_model_dels[action] = copy.deepcopy(del_effects)
                    else:
                        if len(del_effects) > len(max_model_dels[action]):
                            max_model_dels[action] = copy.deepcopy(del_effects)
                else:
                    pass
                    print("Failed execution", action)
                    current_action_copies = copy.deepcopy(self.action_copies[action])
                    self.failed_state_dict[action].append(copy.deepcopy(obs))

                    at_least_one_failed_copy_flag = False
                    for action_copy in current_action_copies:
                        if self.current_model[DOMAIN][action_copy][POS_PREC].issubset(obs):


                            original_prec = copy.deepcopy(self.current_model[DOMAIN][action_copy][POS_PREC])
                            current_act = copy.deepcopy(self.current_model[DOMAIN][action_copy])


                            self.failed_precondition_dict[action].append(copy.deepcopy(original_prec))
                            self.current_model[DOMAIN].pop(action_copy)
                            self.action_copies[action].remove(action_copy)
                            at_least_one_failed_copy_flag = True
                            if len(original_prec) < MAX_PREC_LENGTH:
                                for prop in set(self.current_model[PROP_SET]) - obs:

                                    new_action = copy.deepcopy(current_act)
                                    new_precondition = copy.deepcopy(new_action[POS_PREC])
                                    new_precondition.add(prop)
                                    new_prec_hash = create_set_hash(new_precondition)

                                    is_a_failed_prec = False
                                    for failed_prec in self.failed_precondition_dict[action]:
                                        if failed_prec == new_precondition:
                                            is_a_failed_prec = True
                                    for failed_state in self.failed_state_dict[action]:
                                        if new_precondition.issubset(failed_state):
                                            is_a_failed_prec = True
                                    if new_prec_hash in self.seen_precondition_dict[action]:
                                        is_a_failed_prec = True
                                    if not is_a_failed_prec:
                                        self.seen_precondition_dict[action].append(new_prec_hash)
                                        new_action[POS_PREC].add(prop)
                                        self.current_model[DOMAIN][action + ACTION_PREFIX + str(self.action_copies_count[action])] = new_action
                                        self.action_copies[action].append(action + ACTION_PREFIX + str(self.action_copies_count[action]))
                                        self.action_copies_count[action] += 1
                    if action not in  self.action_failure_count:
                        self.action_failure_count[action] = 0
                    if self.action_failure_count[action] <  self.failure_upper_bound_dict[action]:
                        self.action_failure_count[action] += 1
        print ("TIME TAKEN FOR ACTUAL TEST>>>",time.time() - start_time_for_actual_test)
        # Update the effects of all the copies of actions
        #min_model_effs = {}
        #min_model_dels = {}
        start_time_for_effect_copy = time.time()
        #TODO: make it into lifted
        min_add_action = None
        min_del_action = None
        for lifted_action in actions_succesfully_executed:
            grounded_action_set = set()
            for ground_action in self.current_model[DOMAIN]:
                if ground_action.split(ACT_ARG_SEPARATOR)[0] == lifted_action:
                    grounded_action_set.add(ground_action)
                    if lifted_action not in min_lifted_model_adds:
                        min_lifted_model_adds[lifted_action] = copy.deepcopy(self.current_model[DOMAIN][ground_action][ADDS])
                        min_add_action = ground_action
                    if lifted_action not in max_lifted_model_dels:
                        max_lifted_model_dels[lifted_action] = copy.deepcopy(self.current_model[DOMAIN][ground_action][DELS])
                        min_del_action = ground_action

                    adds = self.current_model[DOMAIN][ground_action][ADDS]
                    dels = self.current_model[DOMAIN][ground_action][DELS]
                    # print ("Adds: for ",action,":", adds)
                    if len(adds) < len(min_lifted_model_adds[lifted_action]):
                        min_lifted_model_adds[lifted_action] = copy.deepcopy(adds)
                        min_add_action = ground_action
                    if len(dels) > len(max_lifted_model_dels[lifted_action]):
                        max_lifted_model_dels[lifted_action] = copy.deepcopy(dels)
                        min_del_action = ground_action


            lifted_add = self.make_lifted_effect_copy(min_add_action, min_lifted_model_adds[lifted_action], ADDS)
            lifted_del = self.make_lifted_effect_copy(min_del_action,max_lifted_model_dels[lifted_action], DELS)

            for ground_action in grounded_action_set:
                ground_original_action_name = self.get_original_action_name(ground_action)
                if ground_original_action_name not in self.action_failure_count:
                    self.action_failure_count[ground_original_action_name] = -100000
                else:
                    self.action_failure_count[ground_original_action_name] = -100000
                self.current_model[DOMAIN][ground_action][ADDS] = copy.deepcopy(self.get_grounded_effs(ground_action, lifted_add, ADDS))
                self.current_model[DOMAIN][ground_action][DELS] = copy.deepcopy(self.get_grounded_effs(ground_action, lifted_del, DELS))
                # Remove actions with duplicate preconditions
            print("TIME TAKEN FOR EFFECT COPY>>>", time.time() - start_time_for_effect_copy)

            start_time_for_removing_duplicate_precs = time.time()
            print("Action failure count: ", self.action_failure_count)

        # Remove actions with duplicate preconditions
        print ("TIME TAKEN FOR EFFECT COPY>>>",time.time() - start_time_for_effect_copy)

        start_time_for_removing_duplicate_precs = time.time()
        print("Action failure count: ", self.action_failure_count)



    def remove_unnecessary_action_copies(self, observation_seq, plan):
        current_state = copy.deepcopy(self.current_model[INSTANCE][INIT])
        for i in range(len(observation_seq)):

            original_action_name = self.get_original_action_name(plan[i])
            if original_action_name not in self.action_copies:
                self.action_copies[original_action_name] = []

            for action_copy in self.action_copies[original_action_name]:
                if not self.current_model[DOMAIN][action_copy][POS_PREC].issubset(current_state):
                    self.current_model[DOMAIN].pop(action_copy)
                    self.action_copies[original_action_name].remove(action_copy)
            current_state = copy.deepcopy(observation_seq[i])



    def return_clause_literals(self, clause):
        if clause.find(OR_PREFIX) != 0:
            return set([clause])
        else:
            raise Exception("Error: Disjunctive clause is not supported")

    def get_original_action_name(self, action_name):
        if action_name.find(ACTION_PREFIX) != -1:
            return action_name.split(ACTION_PREFIX)[0]
        else:
            return action_name

    def precondition_is_met(self, precondition, current_state):
        disjunction_based = False

        if disjunction_based:
            for prec in precondition:
                preconditions_set = self.return_clause_literals(prec)
                precondition_met = False
                for precond in preconditions_set:
                    if precond in current_state:
                        precondition_met = True
                if not precondition_met:
                    return False
            return True
        else:
            return precondition.issubset(current_state)


    # def update_precondition_with_new_actions(self, observation, original_action_name):
    #     # TODO: Analyze whether any current instantiation of the precondition can be removed
    #     action_copies = copy.deepcopy(self.action_copies[original_action_name])
    #     new_action_list = []
    #
    #     for failing_action in action_copies:
    #         current_preconditions = copy.deepcopy(self.current_model[DOMAIN][failing_action][POS_PREC])
    #         poss_preconditions_list = list((set(self.current_model[PROP_SET]) - observation) - current_preconditions)
    #         if len(poss_preconditions_list) == 0:
    #             print ("Action: ", failing_action, " has no possible preconditions")
    #             print ("Current preconditions: ", current_preconditions)
    #             print ("Current state: ", observation)
    #
    #         if original_action_name not in self.action_copies or len(self.action_copies[original_action_name]) == 0:
    #             self.action_copies[original_action_name] = []
    #             id=0
    #         else:
    #             id = self.action_copies_count[original_action_name]
    #             self.action_copies_count[original_action_name] += 1
    #         for lit in poss_preconditions_list:
    #             new_act = failing_action + ACTION_PREFIX + str(id)
    #             self.current_model[DOMAIN][new_act] = copy.deepcopy(self.current_model[DOMAIN][failing_action])
    #             self.current_model[DOMAIN][new_act][POS_PREC].add(lit)
    #             id = self.action_copies_count[original_action_name]
    #             self.action_copies_count[original_action_name] += 1
    #             new_action_list.append(new_act)
    #         # Remove the original action
    #         self.current_model[DOMAIN].pop(failing_action)
    #         if failing_action in self.action_copies[original_action_name]:
    #             self.action_copies[original_action_name].remove(failing_action)
    #     # if DEBUG_LEVEL > 10:
    #     #     print ("Action: ", failing_action, " has new preconditions: ", new_action_list)
    #     #     print("New actions: ", new_action_list)
    #     number_act_removed = 0
    #     self.action_copies[original_action_name].extend(new_action_list)
    #     #print("Action failure count: ", self.action_failure_count)
    #     previous_model_actions = copy.deepcopy(self.current_model[DOMAIN])
    #     for action in previous_model_actions:
    #         first_original_act_name = self.get_original_action_name(action)
    #         has_superset = False
    #         for second_action in self.current_model[DOMAIN]:
    #             second_original_act_name = self.get_original_action_name(second_action)
    #             if str(action) != str(second_action) and first_original_act_name == second_original_act_name and self.current_model[DOMAIN][action][POS_PREC].issubset(
    #                     self.current_model[DOMAIN][second_action][POS_PREC]):
    #                 has_superset = True
    #                 #print("Action",action, "superset",second_action)
    #                 break
    #         if has_superset:
    #             self.current_model[DOMAIN].pop(action)
    #             original_action_name = self.get_original_action_name(action)
    #             self.action_copies[original_action_name].remove(action)

    def update_precondition_with_new_actions(self, observation, failing_action):
        # TODO: Analyze whether any current instantiation of the precondition can be removed

        current_preconditions = copy.deepcopy(self.current_model[DOMAIN][failing_action][POS_PREC])
        poss_preconditions_list = list((set(self.current_model[PROP_SET]) - observation) - current_preconditions)
        if len(poss_preconditions_list) == 0:
            print ("Action: ", failing_action, " has no possible preconditions")
            print ("Current preconditions: ", current_preconditions)
            print ("Current state: ", observation)

        original_action_name = self.get_original_action_name(failing_action)


        self.failed_precondition_dict[original_action_name].append(copy.deepcopy(current_preconditions))
        self.failed_state_dict[original_action_name].append(copy.deepcopy(observation))

        if original_action_name not in self.action_copies or len(self.action_copies[original_action_name]) == 0:
            self.action_copies[original_action_name] = []
            id=0
            self.action_copies_count[original_action_name] = 1
        else:
            id = self.action_copies_count[original_action_name]
            self.action_copies_count[original_action_name] += 1
        new_action_list = []
        for lit in poss_preconditions_list:
            new_act = failing_action + ACTION_PREFIX + str(id)
            new_prec = copy.deepcopy(self.current_model[DOMAIN][failing_action][POS_PREC])
            new_prec.add(lit)
            new_prec_hash = create_set_hash(new_prec)

            failed_prec = False
            for fail_prec in self.failed_precondition_dict[original_action_name]:
                if fail_prec == new_prec:
                    failed_prec = True
            for failed_state in self.failed_state_dict[original_action_name]:
                if new_prec.issubset(failed_state):
                    failed_prec = True
            if new_prec_hash in self.seen_precondition_dict[original_action_name]:
                failed_prec = True
            if len(new_prec) > MAX_PREC_LENGTH:
                failed_prec = True

            if not failed_prec:
                self.seen_precondition_dict[original_action_name].append(new_prec_hash)
                self.current_model[DOMAIN][new_act] = copy.deepcopy(self.current_model[DOMAIN][failing_action])
                self.current_model[DOMAIN][new_act][POS_PREC].add(lit)

                id = self.action_copies_count[original_action_name]
                self.action_copies_count[original_action_name] += 1

                new_action_list.append(new_act)
        # Remove the original action
        self.current_model[DOMAIN].pop(failing_action)
        if failing_action in self.action_copies[original_action_name]:
            self.action_copies[original_action_name].remove(failing_action)
        # if DEBUG_LEVEL > 10:
        #     print ("Action: ", failing_action, " has new preconditions: ", new_action_list)
        #     print("New actions: ", new_action_list)
        number_act_removed = 0
        action_copies = copy.deepcopy(self.action_copies[original_action_name])
        for act in action_copies:
            not_duplicate = True
            if act != failing_action:
                if DEBUG_LEVEL > 10:
                    print ("Checking if action: ", act, " is a duplicate of: ", failing_action)
                for new_act in new_action_list:
                    if self.current_model[DOMAIN][act][POS_PREC] == self.current_model[DOMAIN][new_act][POS_PREC]:
                        not_duplicate = False
                for fail_prec in self.failed_precondition_dict[original_action_name]:
                    if fail_prec == self.current_model[DOMAIN][act][POS_PREC]:
                        not_duplicate = False

                for failed_state in self.failed_state_dict[original_action_name]:
                    if self.current_model[DOMAIN][act][POS_PREC].issubset(failed_state):
                        not_duplicate = False

                if not not_duplicate:
                    number_act_removed += 1
                    self.current_model[DOMAIN].pop(act)
                    self.action_copies[original_action_name].remove(act)
        self.action_copies[original_action_name].extend(new_action_list)
        # print ("Number of actions removed: ", number_act_removed)


    def update_effects(self, observation_seq, plan):
        succesfully_executed_actions = set()
        current_state = copy.deepcopy(self.current_model[INSTANCE][INIT])
        for i in range(len(observation_seq)):
            if plan[i] not in self.current_model[DOMAIN]:
                # Doesn't matter what action I copy it to effect will always propagate
                action_name = self.action_copies[self.get_original_action_name(plan[i])][-1]
            else:
                action_name = plan[i]

            original_action_name = self.get_original_action_name(action_name)
            lifted_action_name = self.get_lifted_action_name(action_name)
            succesfully_executed_actions.add(lifted_action_name)

            # Reset failure counter if the action succeeds even once
            if original_action_name not in self.action_failure_count:
                self.action_failure_count[original_action_name] = -100000
            else:
                self.action_failure_count[original_action_name] = -100000

            if DEBUG_LEVEL > 10:
                print ("action: ", action_name,"original adds count: ", len(self.current_model[DOMAIN][plan[i]][ADDS]))
                print ("action: ", action_name,"original del count: ", len(self.current_model[DOMAIN][plan[i]][DELS]))

            add_effects = copy.deepcopy(self.current_model[DOMAIN][action_name][ADDS] - (set(self.current_model[PROP_SET])
                                                                                     - observation_seq[i]))
            del_effects = current_state - observation_seq[i]
            self.current_model[DOMAIN][action_name][ADDS] = add_effects
            self.current_model[DOMAIN][action_name][DELS] = del_effects
            if DEBUG_LEVEL > 10:
                print ("action: ",action_name,"New adds count: ", len(self.current_model[DOMAIN][plan[i]][ADDS]))
                print ("action: ", action_name,"New del count: ", len(self.current_model[DOMAIN][plan[i]][DELS]))
            current_state = copy.deepcopy(observation_seq[i])
        return succesfully_executed_actions

    def learning_step_all_actions_updated(self):
        # Assuming the same action is not repeated

        print ("ROUND ROBIN QUEUE", self.action_round_robin)
        print ("ACTION THRESHOLD DICT",  self.failure_upper_bound_dict)


        if DEBUG_LEVEL > 0:
            domain_file = "/tmp/domain.pddl"
        else:
            domain_file = "/tmp/domain.pddl"

        start_time = time.time()
        # Run planner to get n plans
        plans = call_diverse_planner_with_indiv_upperbound(self.current_model,domain_file,self.problem_file,
                                     self.domain_template, self.problem_template, self.plan_count,
                                     self.action_failure_count, self.action_test_count, self.action_skip_count,
                                                           self.failure_upper_bound_dict)
        if TIMETAKEN_LOGS:
            print("TIME TAKEN >>> By Planner", time.time() - start_time)
        print("Plan Returned: ", plans)
        # Refine current model estimate using the n plans
        plans_are_empty_flag = True
        actions_succesfully_executed = set()
        for plan in plans:
            for act in plan:
                plans_are_empty_flag = False
                original_action_name = self.get_original_action_name(act)
                if original_action_name not in self.action_test_count:
                    self.action_test_count[original_action_name] = 0
                self.action_test_count[original_action_name] += 1
            observation_seq, goal_reached, failing_action = self.simulator.execute_plan(plan)
            if goal_reached:
                print("Goal reached")
                return (True, plan[:len(observation_seq)])

            start_time = time.time()
            actions_succesfully_executed |= self.update_effects(observation_seq, plan)
            if TIMETAKEN_LOGS:
                print("TIME TAKEN >>> By Update Effects", time.time() - start_time)
            if failing_action:
                if len(observation_seq) == 0:
                    last_observation = copy.deepcopy(self.current_model[INSTANCE][INIT])
                else:
                    last_observation = copy.deepcopy(observation_seq[-1])
                original_action_name = self.get_original_action_name(failing_action)
                possible_failed_actions = [original_action_name] + self.action_copies.get(original_action_name, [])
                if failing_action not in possible_failed_actions:
                    possible_failed_actions.append(failing_action)
                atleast_one_copy_failed = False
                for indiv_fail_action in possible_failed_actions:
                    # Check if the current precondition was actually met
                    if indiv_fail_action in self.current_model[DOMAIN] and self.precondition_is_met(self.current_model[DOMAIN][indiv_fail_action][POS_PREC], last_observation):
                        print("Failing action", indiv_fail_action)
                        #if len(observation_seq) == 0:
                        if original_action_name not in self.action_failure_count:
                            self.action_failure_count[original_action_name] = 0
                        self.update_precondition_with_new_actions(last_observation, indiv_fail_action)
                        atleast_one_copy_failed = True
                if atleast_one_copy_failed:
                    if  self.action_failure_count[original_action_name] < self.failure_upper_bound_dict[original_action_name]:
                        self.action_failure_count[original_action_name] += 1
            #self.remove_unnecessary_action_copies(observation_seq, plan)
            init_state = copy.deepcopy(self.current_model[INSTANCE][INIT])

            start_time = time.time()
            self.test_all_actions([init_state] + observation_seq, plan)
            if TIMETAKEN_LOGS:
                print("TIME TAKEN >>> By test all actions", time.time() - start_time)

        if plans_are_empty_flag:
            self.failure_upper_bound += UPPERBOUND_INCREMENT
            action_stack_length = len(self.action_round_robin)
            action_to_be_removed_found = False
            action_to_be_updated = None
            while action_stack_length > 0 and not action_to_be_removed_found:
                poss_action_to_be_updated = self.action_round_robin.pop()
                action_stack_length = len(self.action_round_robin)
                if self.action_failure_count[poss_action_to_be_updated] == self.failure_upper_bound_dict[poss_action_to_be_updated]:
                    action_to_be_updated = poss_action_to_be_updated
                    action_to_be_removed_found = True
            if action_to_be_removed_found:
                print ("UPDATING THE UPPERBOUND FOR", action_to_be_updated)
                self.failure_upper_bound_dict[action_to_be_updated] += UPPERBOUND_INCREMENT
            if len(self.action_round_robin) == 0:
                self.action_round_robin = copy.deepcopy(self.original_actions)

            self.action_skip_count[SKIP_CONST] +=1
        else:
            self.action_skip_count[SKIP_CONST] = 0
        # Update the effects of all the copies of actions
        min_model_effs = {}
        min_model_dels = {}
        #TODO: make it into lifted

        min_add_action = None
        min_del_action = None
        min_lifted_model_adds = {}
        max_lifted_model_dels = {}
        for lifted_action in actions_succesfully_executed:
            ground_action_set = set()
            for ground_action in self.current_model[DOMAIN]:
                if ground_action.split(ACT_ARG_SEPARATOR)[0] == lifted_action:
                    ground_action_set.add(ground_action)
                    if lifted_action not in min_lifted_model_adds:
                        min_lifted_model_adds[lifted_action] = copy.deepcopy(self.current_model[DOMAIN][ground_action][ADDS])
                        min_add_action = ground_action
                    if lifted_action not in max_lifted_model_dels:
                        max_lifted_model_dels[lifted_action] = copy.deepcopy(self.current_model[DOMAIN][ground_action][DELS])
                        min_del_action = ground_action

                    adds = self.current_model[DOMAIN][ground_action][ADDS]
                    dels = self.current_model[DOMAIN][ground_action][DELS]
                    # print ("Adds: for ",action,":", adds)
                    if len(adds) < len(min_lifted_model_adds[lifted_action]):
                        min_lifted_model_adds[lifted_action] = copy.deepcopy(adds)
                        min_add_action = ground_action
                    if len(dels) > len(max_lifted_model_dels[lifted_action]):
                        max_lifted_model_dels[lifted_action] = copy.deepcopy(dels)
                        min_del_action = ground_action


            lifted_add = self.make_lifted_effect_copy(min_add_action, min_lifted_model_adds[lifted_action], ADDS)
            lifted_del = self.make_lifted_effect_copy(min_del_action,max_lifted_model_dels[lifted_action], DELS)

            for ground_action in ground_action_set:
                ground_original_action_name = self.get_original_action_name(ground_action)
                if ground_original_action_name not in self.action_failure_count:
                    self.action_failure_count[ground_original_action_name] = -100000
                else:
                    self.action_failure_count[ground_original_action_name] = -100000

                self.current_model[DOMAIN][ground_action][ADDS] = copy.deepcopy(
                    self.get_grounded_effs(ground_action, lifted_add, ADDS))
                self.current_model[DOMAIN][ground_action][DELS] = copy.deepcopy(
                    self.get_grounded_effs(ground_action, lifted_del, DELS))
            # Remove actions with duplicate preconditions
        print ("Action failure count: ", self.action_failure_count)

        self.number_of_trials += self.plan_count

        return (False, None)

