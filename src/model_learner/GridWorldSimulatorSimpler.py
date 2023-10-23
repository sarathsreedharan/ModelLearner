import gym
import gym_minigrid
from model_learner.ModelSimulator import ModelSimulator
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


# Cell Free Predicate
FREE = 'free'

# HAS Object Predicate
HAS_PRED = "has"

# HAS STATE Predicate
HAS_STATE_CLOSED_PRED = "has-state-closed"
HAS_STATE_LOCKED_PRED = "has-state-locked"

# Has Color Predicate
HAS_COLOR = "has-color"

# Can Pickup Predicate
IS_BALL_OR_KEY = 'is-ball-key'
IS_DOOR = 'is-door'
IS_CARRYING = 'is-carry'

# NEXT IN DIR Predicate
NEXT_IN_DIR_X = 'next-in-dir-x'
NEXT_IN_DIR_Y = 'next-in-dir-y'

# AGENT
AGENT_IN = "agent-in"

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


class GridWorldSimulator(ModelSimulator):
    def __init__(self, env_name):
        self.goal = None
        self.env = gym.make(env_name)
        self.env.seed(0)
        self.env.reset()
        self.create_static_fluents()
        self.creat_object_space()
        self.create_prop_set()
        self.create_action_space()
        self.initial_state = self.get_symbolic_state()
        self.current_state = copy.deepcopy(self.initial_state)

    def creat_object_space(self):
        self.X_POS_OBJ = set([X_PREFIX + str(i) for i in range(self.env.width)])
        self.Y_POS_OBJ = set([Y_PREFIX + str(i) for i in range(self.env.height)])
        self.ALL_OBJECTS = set()
        self.CARRIABLE_OBJS = set()
        object_index = {obj: 0 for obj in OBJECT_TO_IDX}

        for i in range(self.env.width):
            for j in range(self.env.height):
                v = self.env.grid.get(i, j)
                if v is not None:
                    arr = v.encode()
                    if arr[0] not in [0, 1, 2, 3, 8, 10]:
                        if arr[0] in [5, 6]:
                            curr_obj = IDX_TO_OBJECT[arr[0]] + str(IDX_TO_COLOR[arr[1]])
                            self.CARRIABLE_OBJS.add(curr_obj)
                        else:
                            curr_obj = IDX_TO_OBJECT[arr[0]] + str(object_index[IDX_TO_OBJECT[arr[0]]])
                            object_index[IDX_TO_OBJECT[arr[0]]] += 1
                        self.ALL_OBJECTS.add(curr_obj)

    def create_action_space(self):
        self.action_set = set()
        # TODO: Remove impossible actions
        for x in self.X_POS_OBJ:
            for y in self.Y_POS_OBJ:
                for co in self.CARRIABLE_OBJS:
                    for ob in self.ALL_OBJECTS - self.CARRIABLE_OBJS:
                        for act in ACT_PREFIX_LIST:
                            act_dir = act.split('-')[-1]
                            next_pos = self.get_next_pos((x,y), act_dir)
                            if 'forward' in act:
                                self.action_set.add(act + '_' + '_'.join(
                                    [str(x), str(y), str(next_pos[0]), str(next_pos[1])]))
                            elif 'pickup' in act or 'drop' in act:
                                self.action_set.add(act + '_' + '_'.join(
                                    [str(x), str(y), str(next_pos[0]), str(next_pos[1]), co]))
                            else:
                                self.action_set.add(act + '_' + '_'.join(
                                    [str(x), str(y), str(next_pos[0]), str(next_pos[1]), ob]))


    def get_actions(self):
        return self.action_set

    def create_static_fluents(self):
        self.static_fluents = set()
        for i in range(self.env.width):
            if i > 0:
                self.static_fluents.add(NEXT_IN_DIR_X+'_'+LEFT+'_'+X_PREFIX+str(i)+'_'+X_PREFIX+str(i-1))
            if i < self.env.width-1:
                self.static_fluents.add(NEXT_IN_DIR_X + '_' + RIGHT + '_' + X_PREFIX + str(i) + '_' + X_PREFIX + str(i+1))
            self.static_fluents.add(NEXT_IN_DIR_X + '_' + UP + '_' + X_PREFIX + str(i) + '_' + X_PREFIX + str(i))
            self.static_fluents.add(NEXT_IN_DIR_X + '_' + DOWN + '_' + X_PREFIX + str(i) + '_' + X_PREFIX + str(i))

        for i in range(self.env.height):
            if i > 0:
                self.static_fluents.add(NEXT_IN_DIR_Y+'_'+UP+'_'+Y_PREFIX+str(i)+'_'+Y_PREFIX+str(i-1))
            if i < self.env.height-1:
                self.static_fluents.add(NEXT_IN_DIR_Y + '_' + DOWN + '_' + Y_PREFIX + str(i) + '_' + Y_PREFIX + str(i+1))
            self.static_fluents.add(NEXT_IN_DIR_Y + '_' + LEFT + '_' + Y_PREFIX + str(i) + '_' + Y_PREFIX + str(i))
            self.static_fluents.add(NEXT_IN_DIR_Y + '_' + RIGHT + '_' + Y_PREFIX + str(i) + '_' + Y_PREFIX + str(i))


    def create_prop_set(self):
        self.prop_set = set()
        self.prop_set |= self.static_fluents
        pos = self.env.agent_pos

        for obj in self.CARRIABLE_OBJS:
            self.prop_set.add(IS_BALL_OR_KEY + '_' + obj)

        if pos is not None:
            self.prop_set.add(AGENT_IN + '_' + X_PREFIX + str(pos[0]) + '_' + Y_PREFIX + str(pos[1]))
            self.prop_set.add(FREE + '_' + X_PREFIX + str(pos[0]) + '_' + Y_PREFIX + str(pos[1]))
        else:
            raise Exception("Agent position shouldn't be None")


        object_index = {obj: 0 for obj in OBJECT_TO_IDX}

        for i in range(self.env.width):
            for j in range(self.env.height):
                v = self.env.grid.get(i, j)
                if v is not None:
                    arr = v.encode()
                    if arr[0] not in [2, 0]:
                        if arr[0] not in [8, 10]:
                            if arr[0] in [5, 6]:
                                curr_obj = IDX_TO_OBJECT[arr[0]] + str(IDX_TO_COLOR[arr[1]])
                                self.prop_set.add(AGENT_IN + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                                self.prop_set.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                            else:
                                curr_obj = IDX_TO_OBJECT[arr[0]] + str(object_index[IDX_TO_OBJECT[arr[0]]])
                                object_index[IDX_TO_OBJECT[arr[0]]] += 1
                        else:
                            curr_obj = IDX_TO_OBJECT[arr[0]]
                            # Goal is also free
                            if arr[0] == 8:
                                self.prop_set.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                                self.goal = (i,j)
                                self.prop_set.add(AGENT_IN + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))

                        if arr[0] == 4:
                            for state in STATE_TO_IDX:
                                self.prop_set.add(HAS_STATE_PRED + '_' + curr_obj + '_' + state)
                            self.prop_set.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                            self.prop_set.add(AGENT_IN + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))

                        self.prop_set.add(HAS_PRED + '_' + curr_obj + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                        self.prop_set.add(HAS_COLOR + '_' + curr_obj + '_' + IDX_TO_COLOR[arr[1]])
                else:
                    # Add free
                    self.prop_set.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                    # possible agent pos
                    self.prop_set.add(AGENT_IN + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                    # possible ball or key pos
                    for obj in self.CARRIABLE_OBJS:
                        self.prop_set.add(HAS_PRED + '_' + obj + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                        self.prop_set.add(IS_CARRYING+'_'+ obj)

        pass
    def get_goal_state(self):
        pos = self.goal
        goal_pred =AGENT_IN+ '_' + X_PREFIX + str(pos[0]) + '_' + Y_PREFIX + str(pos[1])
        return set([goal_pred])


    def get_symbolic_state(self):
        state = set([])
        # Get the static var

        state |= self.static_fluents
        # Add agent pos
        pos = self.env.agent_pos
        if pos is not None:
            state.add(AGENT_IN+'_'+X_PREFIX+str(pos[0])+'_'+Y_PREFIX+ str(pos[1]))
        else:
            raise Exception("Agent position shouldn't be None")

        object_index = {obj: 0 for obj in OBJECT_TO_IDX}

        # TODO: Assume the ball and keys have unique colors
        for i in range(self.env.width):
            for j in range(self.env.height):
                v = self.env.grid.get(i, j)
                if v is not None:
                    arr = v.encode()
                    if arr[0] not in [2,0]:
                        if arr[0] not in [8, 10]:
                            if arr[0] in [5,6]:
                                curr_obj = IDX_TO_OBJECT[arr[0]] + str(IDX_TO_COLOR[arr[1]])
                            else:
                                curr_obj = IDX_TO_OBJECT[arr[0]] + str(object_index[IDX_TO_OBJECT[arr[0]]])
                                object_index[IDX_TO_OBJECT[arr[0]]] += 1
                        else:
                            curr_obj = IDX_TO_OBJECT[arr[0]]
                            # Goal is also free
                            if arr[0] == 8:
                                state.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                        if arr[0] in [5,6]:
                            state.add(IS_BALL_OR_KEY + '_' + curr_obj)
                        elif arr[0] == 4:
                            state.add(HAS_STATE_PRED + '_' + curr_obj + '_' + IDX_TO_STATE[arr[2]])
                            if arr[2] == 0:
                                state.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))


                        state.add(HAS_PRED + '_' + curr_obj + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))
                        state.add(HAS_COLOR + '_' + curr_obj + '_' + IDX_TO_COLOR[arr[1]])
                else:
                    state.add(FREE + '_' + X_PREFIX + str(i) + '_' + Y_PREFIX + str(j))

        if self.env.carrying is not None:
            arr = self.env.carrying.encode()
            curr_obj = IDX_TO_OBJECT[arr[0]] + str(IDX_TO_COLOR[arr[1]])
            state.add(IS_CARRYING+'_'+ curr_obj)
            state.add(HAS_COLOR + '_' + curr_obj + '_' + IDX_TO_COLOR[arr[1]])
            state.add(IS_BALL_OR_KEY + '_' + curr_obj)

        return state

    def check_agent_pos_and_dir(self, args, state):
        in_pos_pred = AGENT_IN+'_'+args[0]+'_'+args[1]
        dir_pred = AGENT_POINTS_TO + '_' + args[2]
        print (in_pos_pred, dir_pred)
        return (in_pos_pred in state and dir_pred in state)

    def check_next_pos(self, args, state):
        next_x = NEXT_IN_DIR_X + '_' + args[2] + '_' + args[0] + '_' + args[3]
        next_y = NEXT_IN_DIR_Y + '_' + args[2] + '_' + args[1] + '_' + args[4]
        return (next_x in state and next_y in state)


    def check_next_dir(self, args, state, act_dir):
        if act_dir == 'left':
            next_dir = NEXT_DIR_FOR_LEFT + '_' + args[2] + '_' + args[5]
        elif act_dir == 'right':
            next_dir = NEXT_DIR_FOR_RIGHT + '_' + args[2] + '_' + args[5]
        else:
            raise Exception("Unknown direction action",act_dir)
        return next_dir in state


    def check_next_pos_free(self, args, state):
        free = FREE + '_' + args[3] + '_' + args[4]
        return free in state

    def get_next_pos_free(self, curr_pos, dir):
        #TODO
        return curr_pos


    def check_next_pos_object(self, args, state):
        has_obj = HAS_PRED + '_' + args[7] + '_' + args[3] + '_' + args[4]
        is_ball_or_key = IS_BALL_OR_KEY + '_' + args[7]
        return (has_obj in state and is_ball_or_key in state)

    def check_carrying_object(self, args, state):
        is_carry = IS_CARRYING + '_' + args[6]
        is_ball_or_key = IS_BALL_OR_KEY + '_' + args[6]
        return (is_carry in state and is_ball_or_key in state)

    def check_for_toggle(self, args, state):
        has_state = HAS_STATE_PRED + '_' + args[7] + '_' + 'locked'
        return has_state in state

    def check_for_toggle_2(self, args, state):
        has_state = HAS_STATE_PRED + '_' + args[7] + '_' + 'closed'
        return has_state in state

    def check_for_goal_pred(self, state):
        pos = self.env.agent_pos
        goal_pred = HAS_PRED + '_goal_' + X_PREFIX + str(pos[0]) + '_' + Y_PREFIX + str(pos[1])
        return goal_pred in state

    def step(self, grounded_action):
        '''
        :param action:
        :return: next_state, reward, done
        '''
        # Parameters agent_X, agent_Y, agent_dir, next_X, next_Y, next_dir, carrying_obj, next_obj
        act_parts = grounded_action.split('_')
        current_state = self.get_symbolic_state()

        # Check if the agent is in the position
        agent_pos_check = self.check_agent_pos_and_dir(act_parts[1:], current_state)
        print ("Agent pos check", agent_pos_check)

        # If pick, place or move check that next is actually a consecutive step
        if act_parts[0] in ['forward','pickup','drop']:
            agent_next_pos_check = self.check_next_pos(act_parts[1:], current_state)
        else:
            agent_next_pos_check = True
        print ("Agent next pos check", agent_next_pos_check)

        # If left or right check the next direction is correct
        if act_parts[0] in ['left','right']:
            agent_next_direction_check = self.check_next_dir(act_parts[1:], current_state, act_parts[0])
        else:
            agent_next_direction_check = True


        # Check for forward and drop the cell is empty
        if act_parts[0] in ['forward', 'drop']:
            agent_check_next_pos_free = self.check_next_pos_free(act_parts[1:], current_state)
        else:
            agent_check_next_pos_free = True

        # Check if agent is carrying the object it is supposed to carry for place
        if act_parts[0] in ['drop']:
            agent_check_carry = self.check_carrying_object(act_parts[1:], current_state)
        else:
            agent_check_carry = True
        # Check if the cell has the object it has to pick
        if act_parts[0] in ['pickup']:
            agent_check_pickup = self.check_next_pos_object(act_parts[1:], current_state)
        else:
            agent_check_pickup = True


        if act_parts[0] in ['toggle']:
            agent_check_toggle = self.check_for_toggle(act_parts[1:], current_state)
        else:
            agent_check_toggle = True


        if act_parts[0] in ['toggle-2']:
            agent_check_toggle_2 = self.check_for_toggle_2(act_parts[1:], current_state)
        else:
            agent_check_toggle_2 = True


        check_flag_list = [agent_pos_check, agent_next_pos_check, agent_next_direction_check,
                           agent_check_next_pos_free, agent_check_carry, agent_check_pickup, agent_check_toggle,
                           agent_check_toggle_2]
        check_flag_index = ['agent_pos_check', 'agent_next_pos_check', 'agent_next_direction_check',
                           'agent_check_next_pos_free', 'agent_check_carry', 'agent_check_pickup', 'agent_check_toggle',
                            'agent_check_toggle_2']
        i = 0
        for flag in check_flag_list:
            if flag is False:
                print ("Flag ",check_flag_index[i]," is false")
                return None, -1, False
            i += 1

        self.env.step(ACT_TO_INDEX[act_parts[0]])
        next_state = self.get_symbolic_state()
        # Doesn't change the step failure
        if current_state == next_state:
            print("State is unchanged")
            return None, -1, False

        if self.check_for_goal_pred(current_state):
            return copy.deepcopy(next_state), 1, True
        else:
            return copy.deepcopy(next_state), 1, False

    def reset(self):
        self.current_state = copy.deepcopy(self.initial_state)






