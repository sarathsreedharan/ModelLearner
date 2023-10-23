
mkdir -p ../LOGS/ELEV_LIFTED/
for i in 2 3 4 5 # 6 7 8 9 10
do
#for prob in `ls ../Domains/grounded_elevator/|grep -v pddl|grep -v 10|grep -v yaml|head -n 5`
for prob in prob_21 prob_22 prob_23 prob_24 prob_25
do
   pushd ../src/model_learner
   timeout 10m python main.py ../../Domains/grounded_elevator/${prob}/domain.pddl ../../Domains/grounded_elevator/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl ../../Domains/grounded_elevator/lifted_info.yaml 1 > ../../LOGS/ELEV_LIFTED/${prob}.${i}.log 
   popd
done
done
