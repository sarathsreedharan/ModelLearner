# Driver script for the learning agent
import sys
import time
from model_learner.ModelSimulator import ModelSimulator
from model_learner.parser import Parser
from model_learner.ModelLearnerLiftedCurric import ModelLearnerLiftedCurric

source_domain_file = sys.argv[1]
source_problem_file = sys.argv[2]

target_domain_file = sys.argv[3]
target_problem_file = sys.argv[4]

domain_template_file = sys.argv[5]
problem_template_file = sys.argv[6]
lifted_dict_file = sys.argv[7]
# Seed used
seed = int(sys.argv[8])


parser_obj = Parser()

model_dict = parser_obj.parse_model(source_domain_file, source_problem_file)
#model_sim = ModelSimulator(model_dict)
model_learning_obj = ModelLearnerLiftedCurric(model_dict, domain_template_file, problem_template_file, lifted_dict_file, 10)

start_time = time.time()
for i in range(0,1000):
    print ("Source Iteration: ", i)
    print ("MODEL SIZE>>>>",len(model_learning_obj.current_model["domain"]))
    status, succesful_plan = model_learning_obj.learning_step_all_actions_updated_for_all_plans()
    if status:
        print("Successful plan")
        print(succesful_plan)
        print("Time taken: ", time.time() - start_time)
        print ("Number of Interactions on source: ",model_learning_obj.simulator.number_of_interactions)
        break

lifted_action_defn = model_learning_obj.get_lifted_defnitions()
print ("Lifted Action Defn: ", lifted_action_defn)
#exit(0)
#lifted_action_defn = None

target_model_dict = parser_obj.parse_model(target_domain_file, target_problem_file)
#target_model_learn_obj = ModelLearnerLiftedCurric(target_model_dict, domain_template_file, problem_template_file, lifted_dict_file, 10, lifted_action_defn, False)
target_model_learn_obj = ModelLearnerLiftedCurric(target_model_dict, domain_template_file, problem_template_file, lifted_dict_file, 10, lifted_action_defn, True)
#target_model_learn_obj.failure_upper_bound_dict = {act: 50 for act in target_model_learn_obj.original_actions}
# print (target_model_learn_obj.current_model["domain"])
start_time_target = time.time()
for i in range(0,1000):
    print ("Target Iteration: ", i)
    print ("MODEL SIZE>>>>",len(target_model_learn_obj.current_model["domain"]))
    status, succesful_plan = target_model_learn_obj.learning_step_all_actions_updated_with_new_queue()
    if status:
        print("Successful plan")
        print(succesful_plan)
        print("Time taken on target: ", time.time() - start_time_target)
        print ("Number of Interactions on target: ",target_model_learn_obj.simulator.number_of_interactions)
        exit(0)


# for act in model_learning_obj.action_copies:
#     print(act, model_learning_obj.action_copies[act])
