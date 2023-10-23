# Driver script for the learning agent
import sys
import time

from model_learner.Utils import convert_minigrid_plan_to_action_ids
from model_learner.parser import Parser
from model_learner.ModelLearnerLifted import ModelLearnerLifted

from simple_rl.tasks import GymMDP, MiniGridMDP
from simple_rl.agents import QLearningPlanAgent, QLearningAgent
from simple_rl.run_experiments import run_agents_on_mdp


# Run Experiment


domain_file = sys.argv[1]
problem_file = sys.argv[2]
domain_template_file = sys.argv[3]
problem_template_file = sys.argv[4]
lifted_dict_file = sys.argv[5]
# Seed used
seed = int(sys.argv[6])
# Env name
env_name = sys.argv[7]

mdp = MiniGridMDP(env_name)
Plan_Initialized_agent = QLearningPlanAgent(mdp.get_actions())
Qlearning_agent = QLearningAgent(mdp.get_actions())

parser_obj = Parser()

model_dict = parser_obj.parse_model(domain_file, problem_file)
#model_sim = ModelSimulator(model_dict)
model_learning_obj = ModelLearnerLifted(model_dict, domain_template_file, problem_template_file, lifted_dict_file, 10)

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
        break

exit(0)
state_seq = []
state_seq.append(mdp.get_init_state())

plan = convert_minigrid_plan_to_action_ids(succesful_plan)

print ("Plan: ", plan)
reward_seq = []
# Execute the plan sequence to get the state and reward sequence
for action in plan:
    reward, state = mdp.execute_agent_action(action)
    state_seq.append(state)
    reward_seq.append(reward)

print ("State seq: ", state_seq)
print ("Reward seq: ", reward_seq)
# Initialize the Q function with the plan
Plan_Initialized_agent.initialize_with_plan(plan, state_seq, reward_seq)

run_agents_on_mdp([Plan_Initialized_agent, Qlearning_agent], mdp, episodes=100, steps=200)

# for act in model_learning_obj.action_copies:
#     print(act, model_learning_obj.action_copies[act])
