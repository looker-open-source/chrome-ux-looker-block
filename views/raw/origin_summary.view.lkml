view: origin_summary {

  fields_hidden_by_default: yes
  sql_table_name: `chrome-ux-report.materialized.origin_summary` ;;

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
  measure: count {
    type: count
  }
}
