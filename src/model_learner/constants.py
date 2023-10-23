import os

# Src location
SRC_DIR = os.path.dirname(os.path.abspath(__file__))

# Keywords for internal dictionary based
# representation of classical planning models
# Expected domain dictionary format
# domain:
#   action_name:
#       params: list
#       pos_prec: set()
#       neg_prec: set()
#       adds: set()
#       dels: set()
#       conditional_adds: list()
#       conditional_dels: list()
# instance:
#   init: set()
#   goal: set()
DOMAIN = "domain"
PARAMETERS = "params"
POS_PREC = "pos_prec"
NEG_PREC = "neg_prec"
ADDS = "adds"
COND_ADDS = "conditional_adds"
COND_DELS = "conditional_adds"
DELS = "dels"
INSTANCE = "instance"
INIT = "init"
GOAL = "goal"
PROP_SET = "prop_set"
OR_PREFIX = "OR"
ACTION_PREFIX = "_extension_"

# A hack to get around multiple goals
GOAL_ACHIEVED = "goal_achieved"
GOAL_ACT = "goal-act"

FAILURE_UPPERBOUND = 10
UPPERBOUND_INCREMENT = 1
VIRTUAL_COUNT = 10
SKIP_CONST = "skip"
MAX_PREC_LENGTH = 10

TIMETAKEN_LOGS = True

# CONJUNCT FLUENT
CONJ_PREFIX = "CONJ_"
CONJ_SEPARATOR = '&'
COND_ACT_NAME_SEPARTOR = "#"

MERGE_SEPARATOR = '+'


MAX_RELAXED_PLAN_COST = float('inf')
HEURISTIC_UPPER_BOUND = 10000
RELAXED_ACTION_COST = 1



STAGERRED_PRUNING = True

FLUENT_COST = 1 #000
CONJ_COST = 1


# DEBUG Stuff
DEBUG_LEVEL = 1  # 0: no debug, 10: print debug, 20: print debug and print plan

ACTION_DEFN_TEMPLATE = """
(:action {action_name}
    :parameters ()
    :precondition (and {precondition})
    :effect (and {effects})
)
"""

DIVERSE_PLANNER = os.path.join(SRC_DIR, "run_diverse_planners.sh {domain_file} {problem_file} {output_dir} {plan_count}")

DEFAULT_PLAN_COUNT = 5
ACT_ARG_SEPARATOR = '_'
PROP_ARG_SEPARATOR = '_'

LIFTED_ACTION_KEYS = 'lifted_actions'
VAR_PREFIX = '?X'
VAR_KEY = "varkey"
