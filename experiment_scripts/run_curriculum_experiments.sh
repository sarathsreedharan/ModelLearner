for t in 1 2 3 4 5
do
for i in 6 8 16
python main_minigrid_curriculum.py ../../support_script/Domain/Minigrid-5-5/domain.pddl ../../support_script/Domain/Minigrid-5-5/prob.pddl ../../support_script/Domain/Minigrid-${i}-${i}/domain.pddl ../../support_script/Domain/Minigrid-${i}-${i}/prob.pddl ../../Domains/Templates/domain_template.pddl ../../Domains/Templates/prob_template.pddl ../../support_script/Domain/lifted_info.yaml 0 > ../LOG_MINI/log_final_min_${i}_${t}
done
done
