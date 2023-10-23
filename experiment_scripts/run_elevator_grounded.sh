
mkdir -p ../LOGS/ELEV_NEW/
for i in 1 2 3 4 5 #6 7 8 9 10
do
for prob in `ls ../Domains/grounded_elevator/|grep -v pddl|grep -v 10|grep -v yaml|head -n 5`
do
   pushd ../src/model_learner
   timeout 10m python main_bk.py ../../Domains/grounded_elevator/${prob}/domain.pddl ../../Domains/grounded_elevator/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl > ../../LOGS/ELEV_NEW/${prob}.${i}.log 
   popd
done
done
