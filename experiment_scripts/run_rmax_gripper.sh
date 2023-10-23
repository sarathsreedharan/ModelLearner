
mkdir -p ../LOGS/BLOCKS_GRIPPER_RMAX/
for i in 1 2 3 4 5
do
echo "ITE - ${i}"
for prob in `ls ../Domains/grounded_gripper/|grep -v pddl|grep -v 10|grep -v yaml|head -n 5`
do
    echo "prob - ${prob}"
   pushd ../src/model_learner
   timeout 10m python main_simple_rl_rmax.py ../../Domains/grounded_gripper/${prob}/domain.pddl ../../Domains/grounded_gripper/${prob}/prob.pddl ../../Domains/grounded_gripper/domain_template.pddl ../../Domains/grounded_gripper/prob_template.pddl > ../../LOGS/BLOCKS_GRIPPER_RMAX/${prob}.${i}.log 
   popd
done
done
