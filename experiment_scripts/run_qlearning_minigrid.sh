
mkdir -p ../LOGS/BLOCKS_MINI/
for i in 1 2 3 4 5
do
for prob in `ls ../Domains/MiniGrid-PDDL|grep -v pddl|grep -v yaml|head -n 1`
echo "ITE - ${i}"
do
    echo "prob - ${prob}"
   pushd ../src/model_learner
   timeout 10m python main_simple_rl.py ../../Domains/grounded_minigrid_new/${prob}/domain.pddl ../../Domains/grounded_minigrid_new/${prob}/prob.pddl ../../Domains/grounded_minigrid_new/domain_template.pddl ../../Domains/grounded_minigrid_new/prob_template.pddl > ../../LOGS/BLOCKS_MINI/${prob}.${i}.log 
   popd
done
done
