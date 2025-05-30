view: device_summary {

  fields_hidden_by_default: yes
  sql_table_name: `chrome-ux-report.materialized.device_summary` ;;

  dimension: 2GDensity {
    type: number
    sql: ${TABLE}._2GDensity ;;
  }
  dimension: 3GDensity {
    type: number
    sql: ${TABLE}._3GDensity ;;
  }
  dimension: 4GDensity {
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
  dimension: avg_inp {
    type: number
    sql: ${TABLE}.avg_inp ;;
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
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
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
  dimension: fast_inp {
    type: number
    sql: ${TABLE}.fast_inp ;;
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
  dimension: high_rtt {
    type: number
    sql: ${TABLE}.high_rtt ;;
  }
  dimension: large_cls {
    type: number
    sql: ${TABLE}.large_cls ;;
  }
  dimension: low_rtt {
    type: number
    sql: ${TABLE}.low_rtt ;;
  }
  dimension: medium_cls {
    type: number
    sql: ${TABLE}.medium_cls ;;
  }
  dimension: medium_rtt {
    type: number
    sql: ${TABLE}.medium_rtt ;;
  }
  dimension: navigation_types_back_forward {
    type: number
    sql: ${TABLE}.navigation_types_back_forward ;;
  }
  dimension: navigation_types_back_forward_cache {
    type: number
    sql: ${TABLE}.navigation_types_back_forward_cache ;;
  }
  dimension: navigation_types_navigate {
    type: number
    sql: ${TABLE}.navigation_types_navigate ;;
  }
  dimension: navigation_types_navigate_cache {
    type: number
    sql: ${TABLE}.navigation_types_navigate_cache ;;
  }
  dimension: navigation_types_prerender {
    type: number
    sql: ${TABLE}.navigation_types_prerender ;;
  }
  dimension: navigation_types_reload {
    type: number
    sql: ${TABLE}.navigation_types_reload ;;
  }
  dimension: navigation_types_restore {
    type: number
    sql: ${TABLE}.navigation_types_restore ;;
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
  dimension: p75_cls_origin {
    type: number
    sql: ${TABLE}.p75_cls_origin ;;
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
  dimension: p75_fid_origin {
    type: number
    sql: ${TABLE}.p75_fid_origin ;;
  }
  dimension: p75_fp {
    type: number
    sql: ${TABLE}.p75_fp ;;
  }
  dimension: p75_inp {
    type: number
    sql: ${TABLE}.p75_inp ;;
  }
  dimension: p75_inp_origin {
    type: number
    sql: ${TABLE}.p75_inp_origin ;;
  }
  dimension: p75_lcp {
    type: number
    sql: ${TABLE}.p75_lcp ;;
  }
  dimension: p75_lcp_origin {
    type: number
    sql: ${TABLE}.p75_lcp_origin ;;
  }
  dimension: p75_ol {
    type: number
    sql: ${TABLE}.p75_ol ;;
  }
  dimension: p75_rtt {
    type: number
    sql: ${TABLE}.p75_rtt ;;
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
  dimension: slow_inp {
    type: number
    sql: ${TABLE}.slow_inp ;;
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
