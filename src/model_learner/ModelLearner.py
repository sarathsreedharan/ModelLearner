import copy
from model_learner.constants import *
from model_learner.Utils import *
from model_learner.ModelSimulator import ModelSimulator

class ModelLearner(object):
    def __init__(self, initial_model, domain_template, problem_template, plan_count=DEFAULT_PLAN_COUNT):
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

        self.action_copies = {}
        self.action_failure_count = {}
        self.action_test_count = {}
        self.action_skip_count = {}

        self.number_of_trials = 0

        self.plan_count = plan_count

    def test_all_actions(self, observation_seq):
        for obs in observation_seq:
            for action in self.current_model[DOMAIN]:
                if action.find(ACTION_PREFIX) == -1:
                    next_observation, exec_status, _ = self.simulator.execute_action(action, obs)
                    if action not in self.action_copies:
                        self.action_copies[action] = []

                    for action_copy in self.action_copies[action]:
                        if not self.current_model[DOMAIN][action_copy][POS_PREC].issubset(obs):
                            self.current_model[DOMAIN].pop(action_copy)
                            self.action_copies[action].remove(action_copy)


                    # Reset failure counter if the action succeeds even once
                    if action not in self.action_failure_count:
                        self.action_failure_count[action] = -100000
                    else:
                        self.action_failure_count[action] = -100000

                    if DEBUG_LEVEL > 10:
                        print("action: ", action, "original adds count: ",
                              len(self.current_model[DOMAIN][action][ADDS]))
                        print("action: ", action, "original del count: ",
                              len(self.current_model[DOMAIN][action][DELS]))

                    add_effects = copy.deepcopy(
                        self.current_model[DOMAIN][action][ADDS] - (set(self.current_model[PROP_SET])
                                                                         - next_observation))
                    del_effects = obs - next_observation
                    self.current_model[DOMAIN][action][ADDS] = add_effects
                    self.current_model[DOMAIN][action][DELS] = del_effects
        # Update the effects of all the copies of actions
        min_model_effs = {}
        min_model_dels = {}
        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            if original_action not in min_model_effs:
                min_model_effs[original_action] = copy.deepcopy(self.current_model[DOMAIN][action][ADDS])
            if original_action not in min_model_dels:
                min_model_dels[original_action] = copy.deepcopy(self.current_model[DOMAIN][action][DELS])

            adds = self.current_model[DOMAIN][action][ADDS]
            dels = self.current_model[DOMAIN][action][DELS]
            # print ("Adds: for ",action,":", adds)
            if len(adds) < len(min_model_effs[original_action]):
                min_model_effs[original_action] = copy.deepcopy(adds)
            if len(dels) > len(min_model_dels[original_action]):
                min_model_dels[original_action] = copy.deepcopy(dels)

        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            self.current_model[DOMAIN][action][ADDS] = copy.deepcopy(min_model_effs[original_action])
            self.current_model[DOMAIN][action][DELS] = copy.deepcopy(min_model_dels[original_action])
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



    def update_effects(self, observation_seq, plan):
        current_state = copy.deepcopy(self.current_model[INSTANCE][INIT])
        for i in range(len(observation_seq)):
            if plan[i] not in self.current_model[DOMAIN]:
                # Doesn't matter what action I copy it to effect will always propagate
                action_name = self.action_copies[self.get_original_action_name(plan[i])][-1]
            else:
                action_name = plan[i]

            original_action_name = self.get_original_action_name(action_name)
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

    def return_clause_literals(self, clause):
        literals = set()
        # Clause literal of the form (OR (literal1) (literal2) ...)
        # or it is just a literal
        if clause.find(OR_PREFIX) != 0:
            return set([clause])

        literals = set([i.replace('(','').replace(')','') for i in clause.split("OR")[1].strip().split(" ")])
        return literals

    def update_precondition_with_disjunctions(self, observation, failing_action):
        current_preconditions = copy.deepcopy(self.current_model[DOMAIN][failing_action][POS_PREC])
        literal_set = set()
        for prec in current_preconditions:
           literal_set = literal_set | self.return_clause_literals(prec)
        poss_preconditions_list = list(set(self.current_model[PROP_SET]) - observation)
        #- literal_set)

        #if len(poss_preconditions_list) == 0:
        #    print ("No possible preconditions")
        #    exit(1)
        print ("Observation: ", observation)
        print ("Current preconditions: ", poss_preconditions_list)
        #pint ("poss precs: ", poss_preconditions_list)
        # print("poss prec: ", poss_preconditions)
        new_or_precondition =  OR_PREFIX + " " + " ".join([convert_to_infix_format(i) for i in poss_preconditions_list])
        self.current_model[DOMAIN][failing_action][POS_PREC].add(new_or_precondition)

    def update_precondition_with_new_actions(self, observation, failing_action):
        # TODO: Analyze whether any current instantiation of the precondition can be removed

        current_preconditions = copy.deepcopy(self.current_model[DOMAIN][failing_action][POS_PREC])
        poss_preconditions_list = list((set(self.current_model[PROP_SET]) - observation) - current_preconditions)
        if len(poss_preconditions_list) == 0:
            print ("Action: ", failing_action, " has no possible preconditions")
            print ("Current preconditions: ", current_preconditions)
            print ("Current state: ", observation)

        original_action_name = self.get_original_action_name(failing_action)
        if original_action_name not in self.action_copies or len(self.action_copies[original_action_name]) == 0:
            self.action_copies[original_action_name] = []
            id=0
        else:
            id = int(self.action_copies[original_action_name][-1].split(ACTION_PREFIX)[-1]) + 1
        new_action_list = []
        for lit in poss_preconditions_list:
            new_act = failing_action + ACTION_PREFIX + str(id)
            self.current_model[DOMAIN][new_act] = copy.deepcopy(self.current_model[DOMAIN][failing_action])
            self.current_model[DOMAIN][new_act][POS_PREC].add(lit)
            id += 1
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
                if not not_duplicate:
                    number_act_removed += 1
                    self.current_model[DOMAIN].pop(act)
                    self.action_copies[original_action_name].remove(act)
        self.action_copies[original_action_name].extend(new_action_list)
        # print ("Number of actions removed: ", number_act_removed)


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


    def learning_step(self):
        # Assuming the same action is not repeated

        if DEBUG_LEVEL > 0:
            domain_file = "/tmp/domain.pddl"
        else:
            domain_file = "/tmp/domain.pddl"

        # Run planner to get n plans
        plans = call_diverse_planner(self.current_model,domain_file,self.problem_file,
                                     self.domain_template, self.problem_template, self.plan_count,
                                     self.action_failure_count, self.action_test_count, self.action_skip_count)
        print("Plan Returned: ", plans)
        # Refine current model estimate using the n plans
        for plan in plans:
            for act in plan:
                original_action_name = self.get_original_action_name(act)
                if original_action_name not in self.action_test_count:
                    self.action_test_count[original_action_name] = 0
                self.action_test_count[original_action_name] += 1
            observation_seq, goal_reached, failing_action = self.simulator.execute_plan(plan)
            if goal_reached:
                print("Goal reached")
                return (True, plan[:len(observation_seq)])
            self.update_effects(observation_seq, plan)
            if failing_action:
                print ("Failing action", failing_action)
                if len(observation_seq) == 0:
                    last_observation = copy.deepcopy(self.current_model[INSTANCE][INIT])
                else:
                    last_observation = copy.deepcopy(observation_seq[-1])
                # Check if the current precondition was actually met
                if failing_action in self.current_model[DOMAIN] and self.precondition_is_met(self.current_model[DOMAIN][failing_action][POS_PREC], last_observation):
                    original_action_name = self.get_original_action_name(failing_action)
                    #if len(observation_seq) == 0:
                    if original_action_name not in self.action_failure_count:
                        self.action_failure_count[original_action_name] = 0
                    self.action_failure_count[original_action_name] += 1
                    self.update_precondition_with_new_actions(last_observation, failing_action)
            self.remove_unnecessary_action_copies(observation_seq, plan)


        # Update the effects of all the copies of actions
        min_model_effs = {}
        min_model_dels = {}
        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            if original_action not in min_model_effs:
                min_model_effs[original_action] =  copy.deepcopy(self.current_model[DOMAIN][action][ADDS])
            if original_action not in min_model_dels:
                min_model_dels[original_action] =  copy.deepcopy(self.current_model[DOMAIN][action][DELS])

            adds = self.current_model[DOMAIN][action][ADDS]
            dels = self.current_model[DOMAIN][action][DELS]
            #print ("Adds: for ",action,":", adds)
            if len(adds) < len(min_model_effs[original_action]):
                min_model_effs[original_action] = copy.deepcopy(adds)
            if len(dels) > len(min_model_dels[original_action]):
                min_model_dels[original_action] = copy.deepcopy(dels)

        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            self.current_model[DOMAIN][action][ADDS] = copy.deepcopy(min_model_effs[original_action])
            self.current_model[DOMAIN][action][DELS] = copy.deepcopy(min_model_dels[original_action])
        print ("Action failure count: ", self.action_failure_count)

        self.number_of_trials += self.plan_count

        return (False, None)


    def learning_step_all_actions_updated(self):
        # Assuming the same action is not repeated

        if DEBUG_LEVEL > 0:
            domain_file = "/tmp/domain.pddl"
        else:
            domain_file = "/tmp/domain.pddl"

        # Run planner to get n plans
        plans = call_diverse_planner(self.current_model,domain_file,self.problem_file,
                                     self.domain_template, self.problem_template, self.plan_count,
                                     self.action_failure_count, self.action_test_count, self.action_skip_count)
        print("Plan Returned: ", plans)
        # Refine current model estimate using the n plans
        for plan in plans:
            for act in plan:
                original_action_name = self.get_original_action_name(act)
                if original_action_name not in self.action_test_count:
                    self.action_test_count[original_action_name] = 0
                self.action_test_count[original_action_name] += 1
            observation_seq, goal_reached, failing_action = self.simulator.execute_plan(plan)
            if goal_reached:
                print("Goal reached")
                return (True, plan[:len(observation_seq)])
            if failing_action:
                print ("Failing action", failing_action)
                if len(observation_seq) == 0:
                    last_observation = copy.deepcopy(self.current_model[INSTANCE][INIT])
                else:
                    last_observation = copy.deepcopy(observation_seq[-1])
                # Check if the current precondition was actually met
                if failing_action in self.current_model[DOMAIN] and self.precondition_is_met(self.current_model[DOMAIN][failing_action][POS_PREC], last_observation):
                    original_action_name = self.get_original_action_name(failing_action)
                    #if len(observation_seq) == 0:
                    if original_action_name not in self.action_failure_count:
                        self.action_failure_count[original_action_name] = 0
                    self.action_failure_count[original_action_name] += 1

            self.test_all_actions(observation_seq)
            self.remove_unnecessary_action_copies(observation_seq, plan)


        # Update the effects of all the copies of actions
        min_model_effs = {}
        min_model_dels = {}
        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            if original_action not in min_model_effs:
                min_model_effs[original_action] =  copy.deepcopy(self.current_model[DOMAIN][action][ADDS])
            if original_action not in min_model_dels:
                min_model_dels[original_action] =  copy.deepcopy(self.current_model[DOMAIN][action][DELS])

            adds = self.current_model[DOMAIN][action][ADDS]
            dels = self.current_model[DOMAIN][action][DELS]
            #print ("Adds: for ",action,":", adds)
            if len(adds) < len(min_model_effs[original_action]):
                min_model_effs[original_action] = copy.deepcopy(adds)
            if len(dels) > len(min_model_dels[original_action]):
                min_model_dels[original_action] = copy.deepcopy(dels)

        for action in self.current_model[DOMAIN]:
            original_action = self.get_original_action_name(action)
            self.current_model[DOMAIN][action][ADDS] = copy.deepcopy(min_model_effs[original_action])
            self.current_model[DOMAIN][action][DELS] = copy.deepcopy(min_model_dels[original_action])
        print ("Action failure count: ", self.action_failure_count)

        self.number_of_trials += self.plan_count

        return (False, None)

