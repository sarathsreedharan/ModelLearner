
mkdir -p ../LOGS/ELEV_QLEARN_CURR/
for i in 1 2 3 4 5
do
echo "ITE - ${i}"
for prob in prob_21 prob_22 prob_23 prob_24 prob_25 #`ls ../Domains/grounded_elevator/|grep -v pddl|grep -v 10|grep -v yaml|head -n 5`
do
    echo "prob - ${prob}"
   pushd ../src/model_learner
   timeout 10m python main_simple_rl.py ../../Domains/grounded_elevator/${prob}/domain.pddl ../../Domains/grounded_elevator/${prob}/prob.pddl ../../Domains/grounded_elevator/domain_template.pddl ../../Domains/grounded_elevator/prob_template.pddl > ../../LOGS/ELEV_QLEARN_CURR/${prob}.${i}.log 
   popd
done
done
