# Driver script for the learning agent
import sys
from model_learner.ModelSimulator import ModelSimulator
from model_learner.parser import Parser
from model_learner.ModelLearnerMulti import ModelLearner
from model_learner.ModelLearnerLifted import ModelLearnerLifted
import time

domain_file = sys.argv[1]
problem_file = sys.argv[2]
domain_template_file = sys.argv[3]
problem_template_file = sys.argv[4]
#lifted_dict_file = sys.argv[5]
parser_obj = Parser()

model_dict = parser_obj.parse_model(domain_file, problem_file)
#model_sim = ModelSimulator(model_dict)
model_learning_obj = ModelLearner(model_dict, domain_template_file, problem_template_file, 10)

start_time = time.time()
for i in range(0,1000):
    print ("Iteration: ", i)
    print ("MODEL SIZE>>>>",len(model_learning_obj.current_model["domain"]))
    status, succesful_plan = model_learning_obj.learning_step_all_actions_updated()
    if status:
        print("Successful plan")
        print(succesful_plan)
        print("Time taken: ", time.time() - start_time)
        print ("Number of Interactions: ",model_learning_obj.simulator.number_of_interactions)
        exit(0)

# for act in model_learning_obj.action_copies:
#     print(act, model_learning_obj.action_copies[act])
