view: manager_emp_hier {
  sql_table_name: `WORKDAY_SURVEY.manager_emp_hier5` ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.Designation ;;

  }
  dimension: employee_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: manager_id {
    type: string
    sql: ${TABLE}.ManagerID ;;
  }





}
