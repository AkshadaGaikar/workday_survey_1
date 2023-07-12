view: manager_empl_hier {
  sql_table_name: `WORKDAY_SURVEY.manager_empl_hier` ;;

  dimension: _employee_id {
    type: number
    sql: ${TABLE}._EmployeeID ;;
  }
  dimension: manager_id {
    type: number
    sql: ${TABLE}.ManagerID ;;
  }
  measure: count {
    type: count
  }

}
