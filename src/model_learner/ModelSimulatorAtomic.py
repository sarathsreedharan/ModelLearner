import copy
from model_learner.constants import *
from gym.spaces.discrete import Discrete
import time
import numpy as np
from model_learner.Utils import create_powerset


class ModelSimulator(object):
    def __init__(self, model_map):
        self.problem_map = copy.deepcopy(model_map)
        self.prop_list = list(self.problem_map[PROP_SET])
        self.invalid_state = set(['bot'])
        self.set_action_space()
        self.goal_reward = 1
        self.step_cost = 0
        self.number_of_interactions = 0
        self.goal_found = False
        self.goal_time = 0
        self.info = ''
        self.reset()


    def get_state_array(self,state):
        return self.get_state_str(state)

    def get_state_str(self, state):
        sorted_state = sorted(list(state))
        return str(sorted_state)

    def make_all_states(self):
        self.all_states = [self.get_state_str(self.problem_map[INSTANCE][INIT])]
        self.new_states_list = [self.problem_map[INSTANCE][INIT]]
        while len(self.new_states_list) != 0:
            state = self.new_states_list.pop()
            for act in self.problem_map[DOMAIN]:
                next_state_set, end = self.step_with_name_from_state(state, act)
                if next_state_set != None:
                    new_state_str = self.get_state_str(next_state_set)
                    if new_state_str not in self.all_states:
                        self.all_states.append(new_state_str)
                        if end != True and next_state_set not in self.new_states_list:
                            self.new_states_list.append(next_state_set)


    def get_all_states(self):
        print (len(self.all_states))
        return self.all_states


    def step_with_name(self, action):
        '''
        :param action:
        :return: next_state, reward, done
        '''

        if ACTION_PREFIX in action:
            action = action.split(ACTION_PREFIX)[0]

        # Check if action is valid
        if self.problem_map[DOMAIN][action][POS_PREC].issubset(self.current_state):
            self.current_state = (self.current_state - set(self.problem_map[DOMAIN][action][DELS])) |\
                                 set(self.problem_map[DOMAIN][action][ADDS])
            #print("CURRENT STATE", self.current_state)
            #print("GOAL", self.problem_map[INSTANCE][GOAL])
            if set(self.problem_map[INSTANCE][GOAL]).issubset(self.current_state):
                return copy.deepcopy(self.current_state), 1, True
            else:
                return copy.deepcopy(self.current_state), 1, False
        else:
            self.current_state = None
            return copy.deepcopy(self.current_state), -1, False

    def step_with_name_from_state(self, state, action):
        '''
        :param action:
        :return: state, next_state
        '''


        # Check if action is valid
        if self.problem_map[DOMAIN][action][POS_PREC].issubset(state):
            new_state = (state - set(self.problem_map[DOMAIN][action][DELS])) |\
                                 set(self.problem_map[DOMAIN][action][ADDS])
            #print("CURRENT STATE", self.current_state)
            #print("GOAL", self.problem_map[INSTANCE][GOAL])
            if set(self.problem_map[INSTANCE][GOAL]).issubset(new_state):
                return new_state, True
            else:
                return new_state, False
        else:
            return None, None

    def get_actions(self):
        return self.problem_map[DOMAIN].keys()

    def set_action_space(self):
        self.action_space = Discrete(len(self.problem_map[DOMAIN]))
        self.action_list = list(self.problem_map[DOMAIN].keys())

    def step(self, action_id):
        '''
        :param action:
        :return: next_state, reward, done
        '''
        self.number_of_interactions += 1
        action = self.action_list[action_id]

        if ACTION_PREFIX in action:
            action = action.split(ACTION_PREFIX)[0]

        # Check if action is valid
        if self.problem_map[DOMAIN][action][POS_PREC].issubset(self.current_state):
            self.current_state = (self.current_state - set(self.problem_map[DOMAIN][action][DELS])) |\
                                 set(self.problem_map[DOMAIN][action][ADDS])
            #print("CURRENT STATE", self.current_state)
            #print("GOAL", self.problem_map[INSTANCE][GOAL])
            if set(self.problem_map[INSTANCE][GOAL]).issubset(self.current_state):
                self.goal_found = True
                self.goal_time = time.time()
                return self.get_state_array(copy.deepcopy(self.current_state)), self.goal_reward, True, self.info
            else:
                return self.get_state_array(copy.deepcopy(self.current_state)), self.step_cost, False, self.info
        else:
            return self.get_state_array(copy.deepcopy(self.invalid_state)),  self.step_cost, False, self.info

    def get_state(self):
        return self.current_state

    def reset(self):
        self.current_state = copy.deepcopy(set(self.problem_map[INSTANCE][INIT]))
        return self.get_state_array(self.current_state)

    def execute_plan(self, plan):
        '''
        :param plan:
        :return: Observation Sequence, Whether goal was reached, Failing action
        '''
        self.reset()
        #sprint (self.problem_map)
        observation_seq = []
        for action in plan:
            curr_observation, execution_status, finished_flag = self.step_with_name(action)
            if execution_status == -1:
                return observation_seq, False, action

            observation_seq.append(curr_observation)

            if finished_flag:
                return observation_seq, True, None

        return observation_seq, False, None

    def execute_action_at_step(self, action, plan):
        '''
        :param plan:
        :return: Observation Sequence, Whether goal was reached, Failing action
        '''
        self.reset()
        #sprint (self.problem_map)
        observation_seq = []
        for plan_step in plan:
            curr_observation, execution_status, finished_flag = self.step_with_name(plan_step)
            if execution_status == -1:
                raise Exception("Action {} is not valid".format(plan_step))

            observation_seq.append(curr_observation)

            #if finished_flag:
            #    return observation_seq, True, None

        curr_observation, execution_status, finished_flag = self.step_with_name(action)
        if execution_status == -1:
            return curr_observation, False, action
        return curr_observation, True, None

    def partially_ordered_executor(self, plan):
        pass


