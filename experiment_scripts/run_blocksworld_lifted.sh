
mkdir -p ../LOGS/BLOCKS_lifted/
for i in 1 2 3 4 5 # 6 7 8 9 10
do
for prob in `ls ../Domains/Blocksworld|grep -v pddl|grep -v yaml`
do
   pushd ../src/model_learner
   timeout 10m python main.py ../../Domains/Blocksworld/${prob}/domain.pddl ../../Domains/Blocksworld/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl  ../../Domains/Blocksworld/lifted_info.yaml 1 > ../../LOGS/BLOCKS_lifted/${prob}.${i}.log 
   popd
done
done
