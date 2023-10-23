domain_file=$1
problem_file=$2
plan_dir=$3
# Could be turned into a command line argument
id=$4

PLANNER_SCRIPT=`locate forbiditerative|grep "plan_diverse_agl.sh"`
FILE_DUMP_LOCATION='.'

rm ${FILE_DUMP_LOCATION}/found_plans/sas_plan.*
rm ${plan_dir}/sas_plan.*
for i in `seq 1 $id`; do
    touch ${plan_dir}/sas_plan.${i}
done

${PLANNER_SCRIPT} $domain_file $problem_file ${id} > /dev/null

mkdir -p ${plan_dir}/
mv ${FILE_DUMP_LOCATION}/found_plans/sas_plan.* ${plan_dir}/
