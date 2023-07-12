view: survey {
  sql_table_name: `WORKDAY_SURVEY.Survey` ;;

  dimension: _employee_id {
    type: number
    sql: ${TABLE}._EmployeeID ;;
  }
  dimension: _question {
    type: string
    sql: ${TABLE}._Question ;;
  }
  dimension: _response {
    type: string
    sql: ${TABLE}._Response ;;
  }
  dimension: survey_name {
    type: string
    sql: ${TABLE}.SurveyName ;;
  }
  measure: count {
    type: count
    drill_fields: [survey_name]
  }
}
