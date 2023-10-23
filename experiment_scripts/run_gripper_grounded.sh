
mkdir -p ../LOGS/GRIPPER/
for i in 2 #1 2 3 4 5 # 6 7 8 9 10
do
for prob in `ls ../Domains/grounded_gripper/|grep -v pddl|grep -v 10|grep -v yaml|head -n 5|grep prob_2`
do
   pushd ../src/model_learner
   timeout 10m python main_bk.py ../../Domains/grounded_gripper/${prob}/domain.pddl ../../Domains/grounded_gripper/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl > ../../LOGS/GRIPPER/${prob}.${i}.log 
   popd
done
done
