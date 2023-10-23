import numpy as np
import copy
import json
import os
import tempfile
from model_learner.constants import *
def create_incomplete_model(model_dict,seed=None):
    """
    Create an incomplete model from a model_dict
    """
    if seed is not None:
        np.random.seed(seed)

    new_model = {}
    new_model[INSTANCE][INIT] = copy.deepcopy(model_dict[INSTANCE][INIT])
    new_model[INSTANCE][GOAL] = copy.deepcopy(model_dict[INSTANCE][GOAL])

    for act in model_dict[DOMAIN].keys():
        new_model[DOMAIN][act] = {POS_PREC: set(), ADDS: set(), DELS: set()}
        for prec in model_dict[DOMAIN][act][POS_PREC]:
            if np.random.rand() < 0.5:
                new_model[DOMAIN][act][POS_PREC].add(prec)
        for add in model_dict[DOMAIN][act][ADDS]:
            if np.random.rand() < 0.5:
                new_model[DOMAIN][act][ADDS].add(add)
        for dels in model_dict[DOMAIN][act][DELS]:
            if np.random.rand() < 0.5:
                new_model[DOMAIN][act][DELS].add(dels)
    return new_model

def create_empty_model(model_dict):
    """
    Create an incomplete model from a model_dict
    """

    new_model = {INSTANCE:{}, DOMAIN:{}, PROP_SET:set()}
    new_model[INSTANCE][INIT] = copy.deepcopy(model_dict[INSTANCE][INIT])
    new_model[INSTANCE][GOAL] = copy.deepcopy(model_dict[INSTANCE][GOAL])
    new_model[PROP_SET] = copy.deepcopy(model_dict[PROP_SET])

    for act in model_dict[DOMAIN].keys():
        new_model[DOMAIN][act] = {POS_PREC: set(), ADDS: set(), DELS: set()}
    return new_model


def create_empty_model_from_sim(sim_obj):
    """
    Create an incomplete model from a simulator object
    """

    new_model = {INSTANCE:{}, DOMAIN:{}, PROP_SET:set()}
    new_model[INSTANCE][INIT] = copy.deepcopy(sim_obj.get_symbolic_state())
    new_model[INSTANCE][GOAL] = copy.deepcopy(sim_obj.get_goal_state())
    new_model[PROP_SET] = copy.deepcopy(sim_obj.prop_set)

    for act in sim_obj.action_set:
        new_model[DOMAIN][act] = {POS_PREC: set(), ADDS: set(), DELS: set()}
    return new_model

def create_problem_file(model_dict,problem_file, problem_template_file):
    """
    Create the problem file for the current model
    """
    # Create the problem file
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(problem_file,"w") as f:
        f.write(problem_template.format(init=model_dict[INSTANCE][INIT],
                                        goal=model_dict[INSTANCE][GOAL]))

def check_if_prop_matches_action_signature(act, prop):
    act_parts = act.split(ACTION_PREFIX)[0].split(ACT_ARG_SEPARATOR)
    prop_parts = prop.split(PROP_ARG_SEPARATOR)
    matches_signature = True
    for obj in prop_parts[1:]:
        if obj not in act_parts[1:]:
            matches_signature = False
    return matches_signature

def create_optimistic_model(model_dict):
    for act in model_dict[DOMAIN].keys():
        for prop in model_dict[PROP_SET]:
            model_dict[DOMAIN][act][ADDS].add(prop)
    return copy.deepcopy(model_dict)

def create_optimistic_model_lifted(model_dict):
    for act in model_dict[DOMAIN].keys():
        for prop in model_dict[PROP_SET]:
            if check_if_prop_matches_action_signature(act, prop):
                model_dict[DOMAIN][act][ADDS].add(prop)
    return copy.deepcopy(model_dict)

def model_parameterizer(model_dict):
    pass

def parameter_to_model_dict(parameter_list):
    pass

def convert_to_act_format(action):
    return "_".join(action.replace("(","").replace(")","").strip().split(" "))

def convert_to_infix_format(prop):
    return "("+prop+")"

def choose_action_probabilistically(act_fail_count, total_experiments, skip_count, seed=None):
    if seed is not None:
        np.random.seed(seed)

    failure_prob = float(act_fail_count)/(total_experiments+skip_count+VIRTUAL_COUNT)
    if np.random.rand() <= failure_prob:
        return False
    else:
        return True

def get_original_action_name(action_name):
    if action_name.find(ACTION_PREFIX) != -1:
        return action_name.split(ACTION_PREFIX)[0]
    else:
        return action_name

def call_diverse_planner(model_dict,domain_file,problem_file, domain_template_file, problem_template_file, plan_count, action_failure_count, total_experiments, action_skip_dict, seed=None):
    """
    Call the diverse planner for the current model
    """
    # Create the domain file
    action_definitions = []
    skip_dec_dict = {}
    for act in model_dict[DOMAIN].keys():
        orig_act = get_original_action_name(act)
        if orig_act in skip_dec_dict:
            use_act_dec = skip_dec_dict[orig_act]
        else:
            use_act_dec = choose_action_probabilistically(action_failure_count.get(orig_act,0), total_experiments.get(orig_act,0), action_skip_dict.get(orig_act,0), seed=seed)
            skip_dec_dict[orig_act] = use_act_dec
        if use_act_dec:
            action_skip_dict[orig_act] = 0
            #action_definitions.append(act)
            action_definitions.append(ACTION_DEFN_TEMPLATE.format(action_name=act,
                                                              precondition=" ".join([convert_to_infix_format(i) for i in
                                                                                     model_dict[DOMAIN][act][POS_PREC]]),
                                                              effects=" ".join([convert_to_infix_format(i)
                                                                                for i in model_dict[DOMAIN][act][ADDS]]) + "\n"
                                                                      + " ".join(["(not "+convert_to_infix_format(prec)+")"
                                                                        for prec in model_dict[DOMAIN][act][DELS]])))

        else:

            if orig_act not in action_skip_dict:
                action_skip_dict[orig_act] = 1
            else:
                action_skip_dict[orig_act] += 1

    print ("Use decision:", skip_dec_dict)
    with open(domain_template_file) as f:
        domain_template = f.read()
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(domain_file,"w") as f:
        f.write(domain_template.format("\n".join([convert_to_infix_format(i) for i in model_dict[PROP_SET]]), "\n".join(action_definitions)))

    if DEBUG_LEVEL > 0:
        output_dir = "/tmp/diverse_planner_output"
    else:
        output_dir = tempfile.mkdtemp()

    # Create the problem file
    with open(problem_file,"w") as f:
        f.write(problem_template.format(init="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][INIT]]),
                                        goal="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][GOAL]])))

    # Call the planner
    planner_call = DIVERSE_PLANNER.format(domain_file=domain_file,
                                        problem_file=problem_file,
                                        output_dir=output_dir,
                                        plan_count=plan_count)
    os.system(planner_call)
    # Parse the planner output
    plans = []
    for pid in range(1,plan_count+1):
        with open(output_dir+"/sas_plan."+str(pid)) as f:
            plans.append([convert_to_act_format(act.strip()) for act in f.readlines() if act[0] != ";"])

    if DEBUG_LEVEL == 0:
        os.rmdir(output_dir)

    return plans


def call_diverse_planner_with_upperbound(model_dict,domain_file,problem_file, domain_template_file, problem_template_file, plan_count, action_failure_count, total_experiments, action_skip_dict, upper_bound=FAILURE_UPPERBOUND,seed=None):
    """
    Call the diverse planner for the current model
    """
    # Create the domain file
    action_definitions = []
    skip_dec_dict = {}
    for act in model_dict[DOMAIN].keys():
        orig_act = get_original_action_name(act)
        if orig_act in skip_dec_dict:
            use_act_dec = skip_dec_dict[orig_act]
        else:
            skip_dec_dict[orig_act] = action_failure_count.get(orig_act,0) < upper_bound
            use_act_dec = skip_dec_dict[orig_act]
        if use_act_dec:
            action_skip_dict[orig_act] = 0
            #action_definitions.append(act)
            action_definitions.append(ACTION_DEFN_TEMPLATE.format(action_name=act,
                                                              precondition=" ".join([convert_to_infix_format(i) for i in
                                                                                     model_dict[DOMAIN][act][POS_PREC]]),
                                                              effects=" ".join([convert_to_infix_format(i)
                                                                                for i in model_dict[DOMAIN][act][ADDS]]) + "\n"
                                                                      + " ".join(["(not "+convert_to_infix_format(prec)+")"
                                                                        for prec in model_dict[DOMAIN][act][DELS]])))

        else:

            if orig_act not in action_skip_dict:
                action_skip_dict[orig_act] = 1
            else:
                action_skip_dict[orig_act] += 1

    print ("Use decision:", skip_dec_dict)
    print ("Failure count", action_failure_count)
    with open(domain_template_file) as f:
        domain_template = f.read()
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(domain_file,"w") as f:
        f.write(domain_template.format("\n".join([convert_to_infix_format(i) for i in model_dict[PROP_SET]]), "\n".join(action_definitions)))

    if DEBUG_LEVEL > 0:
        output_dir = "/tmp/diverse_planner_output"
    else:
        output_dir = tempfile.mkdtemp()

    # Create the problem file
    with open(problem_file,"w") as f:
        f.write(problem_template.format(init="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][INIT]]),
                                        goal="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][GOAL]])))

    # Call the planner
    planner_call = DIVERSE_PLANNER.format(domain_file=domain_file,
                                        problem_file=problem_file,
                                        output_dir=output_dir,
                                        plan_count=plan_count)
    os.system(planner_call)
    # Parse the planner output
    plans = []
    for pid in range(1,plan_count+1):
        with open(output_dir+"/sas_plan."+str(pid)) as f:
            plans.append([convert_to_act_format(act.strip()) for act in f.readlines() if act[0] != ";"])

    if DEBUG_LEVEL == 0:
        os.rmdir(output_dir)

    return plans

def call_diverse_planner_with_indiv_upperbound(model_dict,domain_file,problem_file, domain_template_file, problem_template_file, plan_count, action_failure_count, total_experiments, action_skip_dict, upper_bound_dict,seed=None):
    """
    Call the diverse planner for the current model
    """
    # Create the domain file
    action_definitions = []
    skip_dec_dict = {}
    for act in model_dict[DOMAIN].keys():
        orig_act = get_original_action_name(act)
        if orig_act in skip_dec_dict:
            use_act_dec = skip_dec_dict[orig_act]
        else:
            skip_dec_dict[orig_act] = action_failure_count.get(orig_act,0) < upper_bound_dict.get(orig_act, FAILURE_UPPERBOUND)
            use_act_dec = skip_dec_dict[orig_act]
        if use_act_dec:
            action_skip_dict[orig_act] = 0
            #action_definitions.append(act)
            action_definitions.append(ACTION_DEFN_TEMPLATE.format(action_name=act,
                                                              precondition=" ".join([convert_to_infix_format(i) for i in
                                                                                     model_dict[DOMAIN][act][POS_PREC]]),
                                                              effects=" ".join([convert_to_infix_format(i)
                                                                                for i in model_dict[DOMAIN][act][ADDS]]) + "\n"
                                                                      + " ".join(["(not "+convert_to_infix_format(prec)+")"
                                                                        for prec in model_dict[DOMAIN][act][DELS]])))

        else:

            if orig_act not in action_skip_dict:
                action_skip_dict[orig_act] = 1
            else:
                action_skip_dict[orig_act] += 1

    print ("Use decision:", skip_dec_dict)
    print ("Failure count", action_failure_count)
    with open(domain_template_file) as f:
        domain_template = f.read()
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(domain_file,"w") as f:
        f.write(domain_template.format("\n".join([convert_to_infix_format(i) for i in model_dict[PROP_SET]]), "\n".join(action_definitions)))

    if DEBUG_LEVEL > 0:
        output_dir = "/tmp/diverse_planner_output"
    else:
        output_dir = tempfile.mkdtemp()

    # Create the problem file
    with open(problem_file,"w") as f:
        f.write(problem_template.format(init="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][INIT]]),
                                        goal="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][GOAL]])))

    # Call the planner
    planner_call = DIVERSE_PLANNER.format(domain_file=domain_file,
                                        problem_file=problem_file,
                                        output_dir=output_dir,
                                        plan_count=plan_count)
    os.system(planner_call)
    # Parse the planner output
    plans = []
    for pid in range(1,plan_count+1):
        with open(output_dir+"/sas_plan."+str(pid)) as f:
            plans.append([convert_to_act_format(act.strip()) for act in f.readlines() if act[0] != ";"])

    if DEBUG_LEVEL == 0:
        os.rmdir(output_dir)

    return plans


def call_diverse_planner_prob_v1(model_dict,domain_file,problem_file, domain_template_file, problem_template_file, plan_count, action_failure_count, total_experiments, action_skip_dict, seed=None):
    """
    Call the diverse planner for the current model
    """
    # Create the domain file
    action_definitions = []
    skip_dec_dict = {}
    for act in model_dict[DOMAIN].keys():
        orig_act = get_original_action_name(act)
        if orig_act in skip_dec_dict:
            use_act_dec = skip_dec_dict[orig_act]
        else:
            use_act_dec = choose_action_probabilistically(action_failure_count.get(orig_act,0), total_experiments.get(orig_act,0), action_skip_dict.get(orig_act,0), seed=seed)
            skip_dec_dict[orig_act] = use_act_dec
        if use_act_dec:
            action_skip_dict[orig_act] = 0
            #action_definitions.append(act)
            action_definitions.append(ACTION_DEFN_TEMPLATE.format(action_name=act,
                                                              precondition=" ".join([convert_to_infix_format(i) for i in
                                                                                     model_dict[DOMAIN][act][POS_PREC]]),
                                                              effects=" ".join([convert_to_infix_format(i)
                                                                                for i in model_dict[DOMAIN][act][ADDS]]) + "\n"
                                                                      + " ".join(["(not "+convert_to_infix_format(prec)+")"
                                                                        for prec in model_dict[DOMAIN][act][DELS]])))

        else:

            if orig_act not in action_skip_dict:
                action_skip_dict[orig_act] = 1
            else:
                action_skip_dict[orig_act] += 1

    print ("Use decision:", skip_dec_dict)
    with open(domain_template_file) as f:
        domain_template = f.read()
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(domain_file,"w") as f:
        f.write(domain_template.format("\n".join([convert_to_infix_format(i) for i in model_dict[PROP_SET]]), "\n".join(action_definitions)))

    if DEBUG_LEVEL > 0:
        output_dir = "/tmp/diverse_planner_output"
    else:
        output_dir = tempfile.mkdtemp()

    # Create the problem file
    with open(problem_file,"w") as f:
        f.write(problem_template.format(init="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][INIT]]),
                                        goal="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][GOAL]])))

    # Call the planner
    planner_call = DIVERSE_PLANNER.format(domain_file=domain_file,
                                        problem_file=problem_file,
                                        output_dir=output_dir,
                                        plan_count=plan_count)
    os.system(planner_call)
    # Parse the planner output
    plans = []
    for pid in range(1,plan_count+1):
        with open(output_dir+"/sas_plan."+str(pid)) as f:
            plans.append([convert_to_act_format(act.strip()) for act in f.readlines() if act[0] != ";"])

    if DEBUG_LEVEL == 0:
        os.rmdir(output_dir)

    return plans

def call_diverse_planner_prob_v2(model_dict,domain_file,problem_file, domain_template_file, problem_template_file, plan_count, action_failure_count, total_experiments, action_skip_dict, seed=None):
    """
    Call the diverse planner for the current model
    """
    # Create the domain file
    action_definitions = []
    skip_dec_dict = {}
    for act in model_dict[DOMAIN].keys():
        orig_act = get_original_action_name(act)
        if orig_act in skip_dec_dict:
            use_act_dec = skip_dec_dict[orig_act]
        else:
            use_act_dec = choose_action_probabilistically(action_failure_count.get(orig_act,0), total_experiments.get(orig_act,0), action_skip_dict.get(SKIP_CONST,0), seed=seed)
            skip_dec_dict[orig_act] = use_act_dec
        if use_act_dec:
            action_skip_dict[orig_act] = 0
            #action_definitions.append(act)
            action_definitions.append(ACTION_DEFN_TEMPLATE.format(action_name=act,
                                                              precondition=" ".join([convert_to_infix_format(i) for i in
                                                                                     model_dict[DOMAIN][act][POS_PREC]]),
                                                              effects=" ".join([convert_to_infix_format(i)
                                                                                for i in model_dict[DOMAIN][act][ADDS]]) + "\n"
                                                                      + " ".join(["(not "+convert_to_infix_format(prec)+")"
                                                                        for prec in model_dict[DOMAIN][act][DELS]])))

        #else:

            #if orig_act not in action_skip_dict:
            #    action_skip_dict[orig_act] = 1
            #else:
            #    action_skip_dict[orig_act] += 1

    print ("Use decision:", skip_dec_dict)
    with open(domain_template_file) as f:
        domain_template = f.read()
    with open(problem_template_file) as f:
        problem_template = f.read()

    with open(domain_file,"w") as f:
        f.write(domain_template.format("\n".join([convert_to_infix_format(i) for i in model_dict[PROP_SET]]), "\n".join(action_definitions)))

    if DEBUG_LEVEL > 0:
        output_dir = "/tmp/diverse_planner_output"
    else:
        output_dir = tempfile.mkdtemp()

    # Create the problem file
    with open(problem_file,"w") as f:
        f.write(problem_template.format(init="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][INIT]]),
                                        goal="\n".join([convert_to_infix_format(i) for i in model_dict[INSTANCE][GOAL]])))

    # Call the planner
    planner_call = DIVERSE_PLANNER.format(domain_file=domain_file,
                                        problem_file=problem_file,
                                        output_dir=output_dir,
                                        plan_count=plan_count)
    os.system(planner_call)
    # Parse the planner output
    plans = []
    for pid in range(1,plan_count+1):
        with open(output_dir+"/sas_plan."+str(pid)) as f:
            plans.append([convert_to_act_format(act.strip()) for act in f.readlines() if act[0] != ";"])

    if DEBUG_LEVEL == 0:
        os.rmdir(output_dir)

    return plans


def create_set_hash(current_set):
    return ','.join(sorted(list(current_set)))


from itertools import chain, combinations

def create_powerset(iterable):
    "taken form: https://stackoverflow.com/questions/1482308/how-to-get-all-subsets-of-a-set-powerset"
    s = list(iterable)
    return list(chain.from_iterable(combinations(s, r) for r in range(len(s)+1)))

def make_simple_rl_mdp(simulator):
    pass