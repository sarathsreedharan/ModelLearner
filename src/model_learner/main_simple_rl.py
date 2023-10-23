# Driver script for the learning agent
import sys
from model_learner.ModelSimulatorAtomic import ModelSimulator
from model_learner.parser import Parser
from model_learner.ModelLearnerLiftedV2 import ModelLearnerLifted
from example.configs.q_baseline_config import Q_Baseline_Config
from learning_agents.q_learning.q_learning import Q_Learning
from utils.experiment_manager import Wandb_Logger
from simple_rl.tasks.gym.SimMDPClass import SimMDP
from simple_rl.run_experiments import run_agents_on_mdp
from simple_rl.agents import QLearningAgent
from simple_rl.agents import RMaxAgent
from simple_rl.tasks import GridWorldMDP
import time

domain_file = sys.argv[1]
problem_file = sys.argv[2]
domain_template_file = sys.argv[3]
problem_template_file = sys.argv[4]

parser_obj = Parser()

model_dict = parser_obj.parse_model(domain_file, problem_file)
start_time = time.time()
for i in range(1):
    env = ModelSimulator(model_dict)
    sim_mdp = SimMDP(env)
    qagent = QLearningAgent(actions=sim_mdp.get_actions())
    run_agents_on_mdp([qagent], sim_mdp,instances=1, episodes=10000)
    if env.goal_found:
        print ("Time Taken main_print",  env.goal_time - start_time)
        print("Number of Interactions",env.goal_interactions)
