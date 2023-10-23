
mkdir -p ../LOGS/MINIGRID_LIFTED/
for i in 1 2 3 4 5 # 6 7 8 9 10
do
for prob in prob_5
do
   pushd ../src/model_learner
   timeout 30m python main.py ../../Domains/MiniGrid-PDDL/${prob}/lifted_domain.pddl ../../Domains/MiniGrid-PDDL/${prob}/prob.pddl  ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl  ../../Domains/MiniGrid-PDDL/lifted_info.yaml  > ../../LOGS/MINIGRID_LIFTED/${prob}.${i}.log 
   popd
done
done
