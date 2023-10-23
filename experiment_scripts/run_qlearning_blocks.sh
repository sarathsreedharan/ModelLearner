
mkdir -p ../LOGS/BLOCKS_QLEARN_CURR/
for i in 1 2 3 4 5
do
echo "ITE - ${i}"
for prob in Prob1 probBLOCKS-4-1 probBLOCKS-4-2 probBLOCKS-5-0 probBLOCKS-5-1
do
    echo "prob - ${prob}"
   pushd ../src/model_learner
   timeout 10m python main_simple_rl.py ../../Domains/Blocksworld/${prob}/domain.pddl ../../Domains/Blocksworld/${prob}/prob.pddl ../../Domains/Blocksworld/domain_template.pddl ../../Domains/Blocksworld/prob_template.pddl > ../../LOGS/BLOCKS_QLEARN_CURR/${prob}.${i}.log 
   popd
done
done
