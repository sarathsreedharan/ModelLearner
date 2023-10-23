mkdir -p ../logs/
for time in 1 2 3 4 5
do
for i in  5 6 8 16
do
   echo $i $time
   time ./run_lifted.sh /Users/sarathsreedharan/mycode/RL_EXPLORATION/github_repos/ModelLearner/support_script/Domain/Minigrid-${i}-${i}/domain.pddl /Users/sarathsreedharan/mycode/RL_EXPLORATION/github_repos/ModelLearner/support_script/Domain/Minigrid-${i}-${i}/prob.pddl /Users/sarathsreedharan/mycode/RL_EXPLORATION/github_repos/ModelLearner/support_script/Domain/lifted_info.yaml 0 MiniGrid-DoorKey-${i}x${i}-v0 > ../logs/mini_${i}_${time}
done
done
