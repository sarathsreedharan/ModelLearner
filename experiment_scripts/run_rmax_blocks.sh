
mkdir -p ../LOGS/BLOCKS_RMAX/
for i in 1 2 3 4 5
do
echo "ITE - ${i}"
for prob in `ls ../Domains/Blocksworld|grep -v pddl|grep -v yaml`
do
    echo "prob - ${prob}"
   pushd ../src/model_learner
   timeout 10m python main_simple_rl_rmax.py ../../Domains/Blocksworld/${prob}/domain.pddl ../../Domains/Blocksworld/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl > ../../LOGS/BLOCKS_RMAX/${prob}.${i}.log 
   popd
done
done
