connection: "midt_dev_connect_4905"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: workday_survey_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: workday_survey_default_datagroup
#include: "/LookML_Dashboard/*.dashboard.lookml"
#explore: manager_empl_hier {}

explore: survey {


  join: manager_emp_hier{
    type: left_outer
    relationship: many_to_one
    sql_on: ${manager_emp_hier.employee_id}=${survey._employee_id} ;;
  }
  # access_filter: {
  #   field:manager_empl_hier.designation
  #   user_attribute:  manager_id2 #taken from user attribute  check :

  # }
  access_filter: {
    field: manager_emp_hier.designation
    user_attribute: user_designation
  }

}
