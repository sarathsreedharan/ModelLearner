domain=$1
problem=$2
lifteddomain=$3
seed=$4
env=$5
pushd ../src/model_learner
#timeout 30m
python simple_rl_planning_learner.py  $domain $problem  ../../Domains/Templates/domain_template.pddl ../../Domains/Templates/prob_template.pddl  $lifteddomain $seed $env
popd
