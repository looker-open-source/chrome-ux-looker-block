view: origin_query {
  sql_table_name: `chrome-ux-report.materialized.origin_query` ;;

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
  measure: count {
    type: count
  }
}
