view: origin_summary {
  sql_table_name: `chrome-ux-report.materialized.origin_summary` ;;

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
  measure: count {
    type: count
  }
}
