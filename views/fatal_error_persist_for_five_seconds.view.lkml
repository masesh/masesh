# The name of this view in Looker is "Fatal Error Persist for Five Seconds"
view: fatal_error_persist_for_five_seconds {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.FATAL_ERROR_persist_for_five_seconds`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "User Count" in Explore.

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_user_count {
    type: sum
    sql: ${user_count} ;;
  }

  measure: average_user_count {
    type: average
    sql: ${user_count} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
