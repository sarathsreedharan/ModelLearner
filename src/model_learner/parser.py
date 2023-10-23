import sys
import copy
import tarski
import tarski.io
from tarski.io.fstrips import print_init, print_goal, print_formula, print_atom
from tarski.syntax import CompoundFormula, formulas, Tautology
from tarski.fstrips import AddEffect, DelEffect
from model_learner.constants import *

class Parser():
    def __init__(self):
        self.prop_set = set()

    def remove_parenthesis_from_name(self, full_name):
        '''
        For action and predicate names
        '''
        # TODO: Figure out why tarski is producing double ??
        prop_name = full_name.strip().replace('(', '').replace(')', '').replace('??', '?').strip()
        self.prop_set.add(prop_name)
        return prop_name

    def parse_model(self, domain_file, problem_file):
        # Assume the problem and domain is fully grounded
        # Read the pddl files
        curr_reader = tarski.io.FstripsReader()
        curr_reader.read_problem(domain_file, problem_file)

        # Make the sets for init and goal
        init_set = set([self.remove_parenthesis_from_name(fact) for fact in print_init(curr_reader.problem).split("\n")])
        assert isinstance(curr_reader.problem.goal, CompoundFormula) or isinstance(curr_reader.problem.goal, formulas.Atom)
        if isinstance(curr_reader.problem.goal, CompoundFormula):
            goal_set = set([self.remove_parenthesis_from_name(print_formula(fact))
                            for fact in curr_reader.problem.goal.subformulas])
        else:
            # Should never be projecting out goals
            goal_set = set([self.remove_parenthesis_from_name(print_formula(curr_reader.problem.goal))])
        # Make the dictionary for actions
        action_model = {}
        for act in curr_reader.problem.actions.values():
            action_model[act.name] = {}
            # Add parameter list
            action_model[act.name][PARAMETERS] = [p.symbol for p in act.parameters]

            # Make sure the precondition is just a simple conjunction of positive literals
            assert isinstance(act.precondition, CompoundFormula) or isinstance(act.precondition, formulas.Atom)
            if isinstance(act.precondition, CompoundFormula):
                action_model[act.name][POS_PREC] = set([self.remove_parenthesis_from_name(print_formula(f))
                                                        for f in act.precondition.subformulas])
            else:
                action_model[act.name][POS_PREC] = set([self.remove_parenthesis_from_name(print_atom(act.precondition))])
            # Parse effects
            action_model[act.name][ADDS] = set()
            action_model[act.name][DELS] = set()
            action_model[act.name][COND_ADDS] = []
            action_model[act.name][COND_DELS] = []
            for curr_effs in act.effects:
                if type(curr_effs) != list:
                    curr_effs = [curr_effs]
                for eff in curr_effs:
                    # Todo: For some reason tarski is generating None effects
                    if eff:
                        conditional = not isinstance(eff.condition, Tautology)
                        assert not conditional
                        if isinstance(eff, AddEffect):
                            action_model[act.name][ADDS].add(self.remove_parenthesis_from_name(print_atom(eff.atom)))
                        elif isinstance(eff, DelEffect):
                            action_model[act.name][DELS].add(self.remove_parenthesis_from_name(print_atom(eff.atom)))
        model_dict = {}
        model_dict[DOMAIN] = action_model
        model_dict[INSTANCE] = {}
        model_dict[INSTANCE][INIT] = init_set
        model_dict[INSTANCE][GOAL] = goal_set
        model_dict[PROP_SET] = self.get_prop_set()
        return model_dict

    def get_grounded_action_definition(self, grounded_action_name, model_dict):
        act_name = grounded_action_name.split(' ')[0]
        arguments = grounded_action_name.split(' ')[1:]
        act_definition = copy.deepcopy(model_dict[DOMAIN][act_name])
        grounded_act = {}
        argument_map = {}
        for par_id in range(len(act_definition[PARAMETERS])):
            par = arguments[par_id]
            argument_map[act_definition[PARAMETERS][par_id]] = par
        for act_key in act_definition:
            if act_key == PARAMETERS:
                grounded_act[act_key] = []
            else:
                grounded_act[act_key] = set()
                for part in act_definition[act_key]:
                    for par in argument_map:
                        part = part.replace(par, argument_map[par])

                    grounded_act[act_key].add(part)
        return grounded_act


    def get_prop_set(self):
        return self.prop_set