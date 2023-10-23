import gym
import gym_minigrid
from model_learner.ModelSimulator import ModelSimulator
from gym_minigrid.wrappers import ImgObsWrapper, FullyObsWrapper
import torch

import parl_minigrid
from parl_minigrid.envs.wrappers import EpisodeTerminationWrapper

import copy

# Used to map colors to integers
COLOR_TO_IDX = {
    'red': 0,
    'green': 1,
    'blue': 2,
    'purple': 3,
    'yellow': 4,
    'grey': 5
}

IDX_TO_COLOR = dict(zip(COLOR_TO_IDX.values(), COLOR_TO_IDX.keys()))

# Map of object type to integers
OBJECT_TO_IDX = {
    'unseen': 0,
    'empty': 1,
    'wall': 2,
    'floor': 3,
    'door': 4,
    'key': 5,
    'ball': 6,
    'box': 7,
    'goal': 8,
    'lava': 9,
    'agent': 10,
}

IDX_TO_OBJECT = dict(zip(OBJECT_TO_IDX.values(), OBJECT_TO_IDX.keys()))

# Map of state names to integers
STATE_TO_IDX = {
    'open': 0,
    'closed': 1,
    'locked': 2,
}
IDX_TO_STATE = dict(zip(STATE_TO_IDX.values(), STATE_TO_IDX.keys()))
'''
Predicates --
(:predicates (at ?x - xpos ?y - ypos)
             (is-clear ?x - xpos ?y - ypos)
    	     (next-x-left ?x1 - xpos ?x2 - xpos)
    	     (next-x-right ?x1 - xpos ?x2 - xpos) 
    	     (next-y-up ?y1 - ypos ?y2 - ypos)
    	     (next-y-down ?y1 - ypos ?y2 - ypos)
             (door-at ?d - door ?x - xpos ?y - ypos)
             (has-color ?i - item ?c - color)
             (carriable-at ?i - carriable ?x - xpos ?y - ypos)
             (is-carrying ?i - carriable)
             (is-locked ?d - door)
             (is-closed ?d - door)
             (storage-empty)
             )

'''
# TYPES
XTYPE = 'xpos'
YTYPE = 'ypos'
DOORTYPE = 'door'
KEYTYPE = 'key'
BALLTYPE = 'ball'
COLORTYPE = 'color'

# NEXT IN DIR Predicate
NEXT_IN_LEFT_X = 'next-x-left'
NEXT_IN_RIGHT_X = 'next-x-right'
NEXT_IN_UP_Y = 'next-y-up'
NEXT_IN_DOWN_Y = 'next-y-down'

# AGENT
AGENT_AT = "at"

# Cell Free Predicate
IS_CLEAR = 'is-clear'

# HAS STATE Predicate
HAS_STATE_CLOSED_PRED = "is-closed"
HAS_STATE_LOCKED_PRED = "is-locked"

# Has Color Predicate
HAS_COLOR = "has-color"

# Can Pickup Predicate
CARRIABLE_AT = 'carriable-at'
DOOR_AT = 'door-at'
IS_CARRYING = 'is-carrying'
STORAGE_EMPTY = 'storage-empty'



# OBJ PREFIX
# JUST use the object names
# OBJ_LAVA = "lava"
# OBJ_DOOR = "door"
# OBJ_GOAL = "goal"
# OBJ_WALL = "wall"
# OBJ_BOX = "box"
# OBJ_UNSEEN = "unseen"
# OBJ_AGENT = "agent"
# OBJ_EMPTY = "empty"
# OBJ_KEY = "key"
# OBJ_FLOOR = "floor"
# OBJ_BALL = "ball"
# OBJ_PREFIX_LIST = [OBJ_LAVA, OBJ_DOOR, OBJ_GOAL, OBJ_WALL, OBJ_BOX, OBJ_UNSEEN, OBJ_AGENT, OBJ_EMPTY,
#                    OBJ_KEY, OBJ_FLOOR, OBJ_BALL]


# DIRECTIONS
UP = "up"
DOWN = "down"
LEFT = "left"
RIGHT = "right"
DIRECTIONS_LIST = [RIGHT, DOWN, LEFT, UP]

# POS_OBJ
X_PREFIX = 'x'
Y_PREFIX = 'y'

# ACTIONS
ACT_PREFIX_LIST = ['forward-left', 'forward-right', 'forward-up', 'forward-down',
                   'pickup-left', 'pickup-right', 'pickup-up', 'pickup-down',
                   'drop-left', 'drop-right', 'drop-up', 'drop-down',
                   'toggle-left', 'toggle-right', 'toggle-up', 'toggle-down',
                   'toggle2-left', 'toggle2-right', 'toggle2-up', 'toggle2-down',
                   ]
#['left','right','forward','pickup','drop','toggle', 'toggle-2']
ACT_TO_INDEX = {ACT_PREFIX_LIST[i]: i for i in range(len(ACT_PREFIX_LIST)-1)}
#ACT_TO_INDEX['toggle-2'] = 5


class GridWorldProbMaker(object):
    def __init__(self, env_name):
        self.goal = None
        self.env = gym.make(env_name)
        self.env.seed(0)
        self.env.reset()
        self.create_static_fluents()
        self.initial_state = self.get_symbolic_initial_state()
        self.current_state = copy.deepcopy(self.initial_state)
        self.goal_state = self.get_goal_state()

    def create_static_fluents(self):
        self.static_fluents = set()
        for i in range(self.env.width):
            if i > 0:
                self.static_fluents.add(NEXT_IN_LEFT_X+'_'+X_PREFIX+str(i)+'_'+X_PREFIX+str(i-1))
            if i < self.env.width-1:
                self.static_fluents.add(NEXT_IN_RIGHT_X+ '_' + X_PREFIX + str(i) + '_' + X_PREFIX + str(i+1))

        for i in range(self.env.height):
            if i > 0:
                self.static_fluents.add(NEXT_IN_UP_Y+'_'+Y_PREFIX+str(i)+'_'+Y_PREFIX+str(i-1))
            if i < self.env.height-1:
                self.static_fluents.add(NEXT_IN_DOWN_Y + '_' + Y_PREFIX + str(i) + '_' + Y_PREFIX + str(i+1))

    def convert_to_pred_form(self, prop):
        return '(' + ' '.join(prop.split('_')) + ')'

    def get_goal_state(self):
        pos = self.goal
        goal_pred =AGENT_AT+ '_' + X_PREFIX + str(pos[0]) + '_' + Y_PREFIX + str(pos[1])
        return set([goal_pred])


    def get_symbolic_initial_state(self):
        state = set([])
        # Get the static var

        state |= self.static_fluents

        # Assuming that the agent isn't carrying anything in the beginning
        state.add(STORAGE_EMPTY)

        # Add agent pos
        pos = self.env.agent_pos
        if pos is not None:
            state.add(AGENT_AT+'_'+X_PREFIX+str(pos[0])+'_'+Y_PREFIX+ str(pos[1]))
        else:
            raise Exception("Agent position shouldn't be None")

        self.XPOS_OBJ = set()
        self.YPOS_OBJ = set()
        self.KEYS = set()
        self.BALLS = set()
        self.DOORS = set()
        self.COLORS = set()

        object_index = {obj: 0 for obj in OBJECT_TO_IDX}

        # TODO: Assume the ball and keys have unique colors
        for i in range(self.env.width):
            self.XPOS_OBJ.add(X_PREFIX+str(i))
            for j in range(self.env.height):
                self.YPOS_OBJ.add(Y_PREFIX + str(j))
                v = self.env.grid.get(i, j)
                if v is not None:
                    arr = v.encode()
                    if arr[0] not in [2, 0]:
                        if arr[0] in [5, 6, 4]:
                            curr_obj = IDX_TO_OBJECT[arr[0]] + str(object_index[IDX_TO_OBJECT[arr[0]]])
                            object_index[IDX_TO_OBJECT[arr[0]]] += 1
                            if arr[0] == 5:
                                self.KEYS.add(curr_obj)
                            elif arr[0] == 6:
                                self.BALLS.add(curr_obj)
                            else:
                                self.DOORS.add(curr_obj)
                        elif arr[0] in [8, 10]:
                            state.add(IS_CLEAR + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                            if arr[0] == 8:
                                self.goal = (i,j)
                        if arr[0] in [5,6,4]:
                            state.add(HAS_COLOR + '_' + curr_obj + '_' + IDX_TO_COLOR[arr[1]])
                            self.COLORS.add(IDX_TO_COLOR[arr[1]])
                            if arr[0] in [5,6]:
                                state.add(CARRIABLE_AT + '_' + curr_obj + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                            else:
                                state.add(DOOR_AT + '_' + curr_obj + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                                if arr[2] == 0:
                                    state.add(IS_CLEAR + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                                elif arr[2] == 1:
                                    state.add(HAS_STATE_CLOSED_PRED + '_' + curr_obj)
                                else:
                                    state.add(HAS_STATE_LOCKED_PRED + '_' + curr_obj)
                else:
                    state.add(IS_CLEAR + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))


        return state


    def reset(self):
        self.current_state = copy.deepcopy(self.initial_state)


    def dump_prob_str(self, template_str):
        obj_str = ''
        obj_str += ' '.join(list(self.XPOS_OBJ)) + ' - xpos' + '\n'
        obj_str += ' '.join(list(self.YPOS_OBJ)) + ' - ypos' + '\n'
        if len(self.KEYS) > 0:
            obj_str += ' '.join(list(self.KEYS)) + ' - key' + '\n'
        if len(self.DOORS) > 0:
            obj_str += ' '.join(list(self.DOORS)) + ' - door' + '\n'
        if len(self.BALLS) > 0:
            obj_str += ' '.join(list(self.BALLS)) + ' - ball' + '\n'
        if len(self.COLORS) > 0:
            obj_str += ' '.join(list(self.COLORS)) + ' - color' + '\n'


        init_str = '\n'.join(list(self.convert_to_pred_form(i) for i in self.initial_state))
        goal_str = '\n'.join(list(self.convert_to_pred_form(i) for i in self.goal_state))
        return template_str.format(obj_str, init_str, goal_str)


if __name__ == '__main__':
    import sys
    env_name = sys.argv[1]
    template = sys.argv[2]
    target = sys.argv[3]
    test_obj = GridWorldProbMaker(env_name)
    with open(template) as t_fd:
        template_str = t_fd.read()

    with open(target, 'w') as t_fd:
        t_fd.write(test_obj.dump_prob_str(template_str))





