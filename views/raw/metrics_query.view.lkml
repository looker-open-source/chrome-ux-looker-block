view: metrics_query {

  fields_hidden_by_default: yes
  sql_table_name: `chrome-ux-report.materialized.metrics_query` ;;

  dimension: _2_gdensity {
    type: number
    sql: ${TABLE}._2GDensity ;;
  }
  dimension: _3_gdensity {
    type: number
    sql: ${TABLE}._3GDensity ;;
  }
  dimension: _4_gdensity {
    type: number
    sql: ${TABLE}._4GDensity ;;
  }
  dimension: avg_dcl {
    type: number
    sql: ${TABLE}.avg_dcl ;;
  }
  dimension: avg_fcp {
    type: number
    sql: ${TABLE}.avg_fcp ;;
  }
  dimension: avg_fid {
    type: number
    value_format_name: id
    sql: ${TABLE}.avg_fid ;;
  }
  dimension: avg_fp {
    type: number
    sql: ${TABLE}.avg_fp ;;
  }
  dimension: avg_lcp {
    type: number
    sql: ${TABLE}.avg_lcp ;;
  }
  dimension: avg_ol {
    type: number
    sql: ${TABLE}.avg_ol ;;
  }
  dimension: avg_ttfb {
    type: number
    sql: ${TABLE}.avg_ttfb ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: desktop_density {
    type: number
    sql: ${TABLE}.desktopDensity ;;
  }
  dimension: fast_dcl {
    type: number
    sql: ${TABLE}.fast_dcl ;;
  }
  dimension: fast_fcp {
    type: number
    sql: ${TABLE}.fast_fcp ;;
  }
  dimension: fast_fid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fast_fid ;;
  }
  dimension: fast_fp {
    type: number
    sql: ${TABLE}.fast_fp ;;
  }
  dimension: fast_lcp {
    type: number
    sql: ${TABLE}.fast_lcp ;;
  }
  dimension: fast_ol {
    type: number
    sql: ${TABLE}.fast_ol ;;
  }
  dimension: fast_ttfb {
    type: number
    sql: ${TABLE}.fast_ttfb ;;
  }
  dimension: large_cls {
    type: number
    sql: ${TABLE}.large_cls ;;
  }
  dimension: medium_cls {
    type: number
    sql: ${TABLE}.medium_cls ;;
  }
  dimension: notification_permission_accept {
    type: number
    sql: ${TABLE}.notification_permission_accept ;;
  }
  dimension: notification_permission_deny {
    type: number
    sql: ${TABLE}.notification_permission_deny ;;
  }
  dimension: notification_permission_dismiss {
    type: number
    sql: ${TABLE}.notification_permission_dismiss ;;
  }
  dimension: notification_permission_ignore {
    type: number
    sql: ${TABLE}.notification_permission_ignore ;;
  }
  dimension: offline_density {
    type: number
    sql: ${TABLE}.offlineDensity ;;
  }
  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
  dimension: p75_cls {
    type: number
    sql: ${TABLE}.p75_cls ;;
  }
  dimension: p75_dcl {
    type: number
    sql: ${TABLE}.p75_dcl ;;
  }
  dimension: p75_fcp {
    type: number
    sql: ${TABLE}.p75_fcp ;;
  }
  dimension: p75_fid {
    type: number
    value_format_name: id
    sql: ${TABLE}.p75_fid ;;
  }
  dimension: p75_fp {
    type: number
    sql: ${TABLE}.p75_fp ;;
  }
  dimension: p75_lcp {
    type: number
    sql: ${TABLE}.p75_lcp ;;
  }
  dimension: p75_ol {
    type: number
    sql: ${TABLE}.p75_ol ;;
  }
  dimension: p75_ttfb {
    type: number
    sql: ${TABLE}.p75_ttfb ;;
  }
  dimension: phone_density {
    type: number
    sql: ${TABLE}.phoneDensity ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: slow2_gdensity {
    type: number
    sql: ${TABLE}.slow2GDensity ;;
  }
  dimension: slow_dcl {
    type: number
    sql: ${TABLE}.slow_dcl ;;
  }
  dimension: slow_fcp {
    type: number
    sql: ${TABLE}.slow_fcp ;;
  }
  dimension: slow_fid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slow_fid ;;
  }
  dimension: slow_fp {
    type: number
    sql: ${TABLE}.slow_fp ;;
  }
  dimension: slow_lcp {
    type: number
    sql: ${TABLE}.slow_lcp ;;
  }
  dimension: slow_ol {
    type: number
    sql: ${TABLE}.slow_ol ;;
  }
  dimension: slow_ttfb {
    type: number
    sql: ${TABLE}.slow_ttfb ;;
  }
  dimension: small_cls {
    type: number
    sql: ${TABLE}.small_cls ;;
  }
  dimension: tablet_density {
    type: number
    sql: ${TABLE}.tabletDensity ;;
  }
  dimension: yyyymm {
    type: number
    sql: ${TABLE}.yyyymm ;;
  }
  dimension: yyyymmdd {
    type: string
    sql: ${TABLE}.yyyymmdd ;;
  }
  measure: count {
    type: count
  }
}
