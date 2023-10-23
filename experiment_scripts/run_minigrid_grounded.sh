
mkdir -p ../LOGS/MINIGRID/
for i in 2 3 4 5 # 6 7 8 9 10
do
for prob in prob_1 prob_2 prob_3
do
   pushd ../src/model_learner
   timeout 10m python main_bk.py ../../Domains/MiniGrid-PDDL/${prob}/lifted_domain.pddl ../../Domains/MiniGrid-PDDL/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl > ../../LOGS/MINIGRID/${prob}.${i}.log 
   popd
done
done
