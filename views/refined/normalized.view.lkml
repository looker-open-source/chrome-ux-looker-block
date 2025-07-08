view: normalized {
  derived_table: {
    sql:

        SELECT
            device_summary.date AS date,
            COALESCE(SUM(device_summary.small_cls ), 0) AS avg_good_cls,
            COALESCE(SUM(device_summary.medium_cls ), 0) AS avg_ni_cls,
            COALESCE(SUM(device_summary.large_cls ), 0) AS avg_poor_cls,
            COALESCE(SUM(device_summary.fast_dcl ), 0) AS avg_good_dcl,
            COALESCE(SUM(device_summary.avg_dcl ), 0) AS avg_ni_dcl,
            COALESCE(SUM(device_summary.slow_dcl ), 0) AS avg_poor_dcl,
            COALESCE(SUM(device_summary.fast_fcp ), 0) AS avg_good_fcp,
            COALESCE(SUM(device_summary.avg_fcp ), 0) AS avg_ni_fcp,
            COALESCE(SUM(device_summary.slow_fcp ), 0) AS avg_poor_fcp,
            COALESCE(SUM(device_summary.fast_fid ), 0) AS avg_good_fid,
            COALESCE(SUM(device_summary.avg_fid ), 0) AS avg_ni_fid,
            COALESCE(SUM(device_summary.slow_fid ), 0) AS avg_poor_fid,
            COALESCE(SUM(device_summary.fast_fp ), 0) AS avg_good_fp,
            COALESCE(SUM(device_summary.avg_fp ), 0) AS avg_ni_fp,
            COALESCE(SUM(device_summary.slow_fp ), 0) AS avg_poor_fp,
            COALESCE(SUM(device_summary.fast_inp ), 0) AS avg_good_inp,
            COALESCE(SUM(device_summary.avg_inp ), 0) AS avg_ni_inp,
            COALESCE(SUM(device_summary.slow_inp ), 0) AS avg_poor_inp,
            COALESCE(SUM(device_summary.fast_lcp ), 0) AS avg_good_lcp,
            COALESCE(SUM(device_summary.avg_lcp ), 0) AS avg_ni_lcp,
            COALESCE(SUM(device_summary.slow_lcp ), 0) AS avg_poor_lcp,
            COALESCE(SUM(device_summary.fast_ol ), 0) AS avg_good_ol,
            COALESCE(SUM(device_summary.avg_ol ), 0) AS avg_ni_ol,
            COALESCE(SUM(device_summary.slow_ol ), 0) AS avg_poor_ol,
            COALESCE(SUM(device_summary.fast_ttfb ), 0) AS avg_good_ttfb,
            COALESCE(SUM(device_summary.avg_ttfb ), 0) AS avg_ni_ttfb,
            COALESCE(SUM(device_summary.slow_ttfb ), 0) AS avg_poor_ttfb,
            COALESCE(SUM(device_summary._2GDensity ), 0) AS total_2g_density,
            COALESCE(SUM(device_summary._3GDensity ), 0) AS total_3g_density,
            COALESCE(SUM(device_summary._4GDensity ), 0) AS total_4g_density,
            COALESCE(SUM(device_summary.slow2GDensity ), 0) AS total_slow2g_density,
            COALESCE(SUM(device_summary.offlineDensity ), 0) AS total_offline_density,
            COALESCE(SUM(device_summary.desktopDensity ), 0) AS total_desktop_traffic_proportion,
            COALESCE(SUM(device_summary.phoneDensity ), 0) AS total_phone_traffic_proportion,
            COALESCE(SUM(device_summary.tabletDensity ), 0) AS total_tablet_traffic_proportion,
            COALESCE(SUM(device_summary.navigation_types_back_forward_cache ), 0) AS total_back_forward_cache_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_back_forward ), 0) AS total_back_forward_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_navigate_cache ), 0) AS total_navigate_cache_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_prerender ), 0) AS total_prerender_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_reload ), 0) AS total_reload_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_restore ), 0) AS total_restore_nav_proportion,
            COALESCE(SUM(device_summary.navigation_types_navigate ), 0) AS total_navigate_nav_proportion,
            COALESCE(SUM(device_summary.notification_permission_accept ), 0) AS total_notification_accept_proportion,
            COALESCE(SUM(device_summary.notification_permission_deny ), 0) AS total_notification_deny_proportion,
            COALESCE(SUM(device_summary.notification_permission_dismiss ), 0) AS total_notification_dismiss_proportion,
            COALESCE(SUM(device_summary.notification_permission_ignore ), 0) AS total_notification_ignore_proportion,

      -- P75
      AVG(device_summary.p75_cls ) AS avg_p75_cls,
      AVG(device_summary.p75_dcl ) AS avg_p75_dcl,
      AVG(device_summary.p75_fcp ) AS avg_p75_fcp,
      AVG(device_summary.p75_fid ) AS avg_p75_fid,
      AVG(device_summary.p75_fp ) AS avg_p75_fp,
      AVG(device_summary.p75_inp ) AS avg_p75_inp,
      AVG(device_summary.p75_lcp ) AS avg_p75_lcp,
      AVG(device_summary.p75_ol ) AS avg_p75_ol,
      AVG(device_summary.p75_ttfb ) AS avg_p75_ttfb
      FROM `@{CRUX_PUBLIC_PROJECT_ID}.@{CRUX_DATASET}.device_summary` AS device_summary
      WHERE
      {% condition origin_filter %} device_summary.origin {% endcondition %} AND
      {% condition device_filter %} device_summary.device {% endcondition %}
      GROUP BY
      1
      ;;
  }
  fields_hidden_by_default: yes

  filter: origin_filter {
    group_label: "General Filters"
    hidden: no
    type: string
    default_value: "https://cloud.google.com"
  }

  filter: device_filter {
    group_label: "General Filters"
    hidden: no
    type: string
    suggestions: ["desktop","phone","tablet"]
  }

  dimension_group: date{
    hidden: no
    type: time
    sql: TIMESTAMP(${TABLE}.date) ;;
    timeframes: [month, date]
  }

#--- Dynamic Controls ------------------------------------------------------------------------

  parameter: dynamic_metric {
    group_label: "Dynamic Metric Controls"
    label: "Core Web Vitals Metric"
    type: unquoted
    default_value: "lcp"
    allowed_value: {
      value: "lcp"
      label: "Largest Contentful Paint (LCP)"
      }
    allowed_value: {
      value: "inp"
      label: "Interaction to Next Paint (INP)"
      }
    allowed_value: {
      value: "cls"
      label: "Cumulative Layout Shift (CLS)"
      }
    allowed_value: {
      value: "fcp"
      label: "First Contentful Paint (FCP)"
      }
    allowed_value: {
      value: "ttfb"
      label: "Time to First Byte (TTFB)"
      }
    allowed_value: {
      value: "dcl"
      label: "DOM Content Loaded (DCL)"
      }
    allowed_value: {
      value: "fp"
      label: "First Paint (FP)"
      }
    allowed_value: {
      value: "ol"
      label: "Onload (OL)"
      }
  }

#--- Dynamic Performance Metrics -------------------------------------------------------------

  measure: dynamic_good_pct {
    group_label: "Dynamic Performance Metrics"
    description: "Displays the percentage of 'Good' user experiences for the dynamically selected metric."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}Good LCP
    {% elsif dynamic_metric._parameter_value == 'inp' %}Good INP
    {% elsif dynamic_metric._parameter_value == 'cls' %}Good CLS
    {% elsif dynamic_metric._parameter_value == 'fcp' %}Good FCP
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}Good TTFB
    {% elsif dynamic_metric._parameter_value == 'dcl' %}Good DCL
    {% elsif dynamic_metric._parameter_value == 'fp' %}Good FP
    {% elsif dynamic_metric._parameter_value == 'ol' %}Good Onload
    {% else %}Good Metric{% endif %}"
    type: average
    value_format_name: percent_2
    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${normal_good_lcp}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${normal_good_inp}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${normal_good_cls}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${normal_good_fcp}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${normal_good_ttfb}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${normal_good_dcl}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${normal_good_fp}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${normal_good_ol}
      {% else %} NULL {% endif %} ;;
    hidden: no
  }

  measure: dynamic_good_pct_past_month {
    group_label: "Dynamic Performance Metrics"
    description: "Compares the 'Good' performance percentage for the selected metric to the previous month."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}Good LCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'inp' %}Good INP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'cls' %}Good CLS (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fcp' %}Good FCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}Good TTFB (Past Month)
    {% elsif dynamic_metric._parameter_value == 'dcl' %}Good DCL (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fp' %}Good FP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ol' %}Good Onload (Past Month)
    {% else %}Good (Past Month){% endif %}"
    type: period_over_period
    based_on: dynamic_good_pct
    based_on_time: date_month
    period: month
    kind: previous
    value_format_name: percent_2
    hidden: no
  }

  measure: dynamic_ni_pct {
    group_label: "Dynamic Performance Metrics"
    description: "Displays the percentage of 'Needs Improvement' user experiences for the dynamically selected metric."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}Needs Improvement LCP
    {% elsif dynamic_metric._parameter_value == 'inp' %}Needs Improvement INP
    {% elsif dynamic_metric._parameter_value == 'cls' %}Needs Improvement CLS
    {% elsif dynamic_metric._parameter_value == 'fcp' %}Needs Improvement FCP
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}Needs Improvement TTFB
    {% elsif dynamic_metric._parameter_value == 'dcl' %}Needs Improvement DCL
    {% elsif dynamic_metric._parameter_value == 'fp' %}Needs Improvement FP
    {% elsif dynamic_metric._parameter_value == 'ol' %}Needs Improvement Onload
    {% else %}Needs Improvement Metric{% endif %}"
    type: average
    value_format_name: percent_2
    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${normal_ni_lcp}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${normal_ni_inp}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${normal_ni_cls}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${normal_ni_fcp}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${normal_ni_ttfb}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${normal_ni_dcl}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${normal_ni_fp}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${normal_ni_ol}
      {% else %} NULL {% endif %} ;;
    hidden: no
  }

  measure: dynamic_ni_pct_past_month {
    group_label: "Dynamic Performance Metrics"
    description: "Compares the 'Needs Improvement' performance percentage for the selected metric to the previous month."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}NI LCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'inp' %}NI INP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'cls' %}NI CLS (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fcp' %}NI FCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}NI TTFB (Past Month)
    {% elsif dynamic_metric._parameter_value == 'dcl' %}NI DCL (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fp' %}NI FP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ol' %}NI Onload (Past Month)
    {% else %}NI (Past Month){% endif %}"
    type: period_over_period
    based_on: dynamic_ni_pct
    based_on_time: date_month
    period: month
    kind: previous
    value_format_name: percent_2
    hidden: no
  }

  measure: dynamic_poor_pct {
    group_label: "Dynamic Performance Metrics"
    description: "Displays the percentage of 'Poor' user experiences for the dynamically selected metric."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}Poor LCP
    {% elsif dynamic_metric._parameter_value == 'inp' %}Poor INP
    {% elsif dynamic_metric._parameter_value == 'cls' %}Poor CLS
    {% elsif dynamic_metric._parameter_value == 'fcp' %}Poor FCP
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}Poor TTFB
    {% elsif dynamic_metric._parameter_value == 'dcl' %}Poor DCL
    {% elsif dynamic_metric._parameter_value == 'fp' %}Poor FP
    {% elsif dynamic_metric._parameter_value == 'ol' %}Poor Onload
    {% else %}Poor Metric{% endif %}"
    type: average
    value_format_name: percent_2
    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${normal_poor_lcp}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${normal_poor_inp}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${normal_poor_cls}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${normal_poor_fcp}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${normal_poor_ttfb}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${normal_poor_dcl}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${normal_poor_fp}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${normal_poor_ol}
      {% else %} NULL {% endif %} ;;
    hidden: no
  }

  measure: dynamic_poor_pct_past_month {
    group_label: "Dynamic Performance Metrics"
    description: "Compares the 'Poor' performance percentage for the selected metric to the previous month."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}Poor LCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'inp' %}Poor INP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'cls' %}Poor CLS (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fcp' %}Poor FCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}Poor TTFB (Past Month)
    {% elsif dynamic_metric._parameter_value == 'dcl' %}Poor DCL (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fp' %}Poor FP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ol' %}Poor Onload (Past Month)
    {% else %}Poor (Past Month){% endif %}"
    type: period_over_period
    based_on: dynamic_poor_pct
    based_on_time: date_month
    period: month
    kind: previous
    value_format_name: percent_2
    hidden: no
  }

  measure: dynamic_p75 {
    group_label: "Dynamic Performance Metrics"
    description: "Displays the 75th percentile value for the dynamically selected metric."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}p75 LCP (ms)
    {% elsif dynamic_metric._parameter_value == 'inp' %}p75 INP (ms)
    {% elsif dynamic_metric._parameter_value == 'cls' %}p75 CLS
    {% elsif dynamic_metric._parameter_value == 'fcp' %}p75 FCP (ms)
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}p75 TTFB (ms)
    {% elsif dynamic_metric._parameter_value == 'dcl' %}p75 DCL (ms)
    {% elsif dynamic_metric._parameter_value == 'fp' %}p75 FP (ms)
    {% elsif dynamic_metric._parameter_value == 'ol' %}p75 Onload (ms)
    {% else %}p75 Metric{% endif %}"
    type: average
    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${p75_lcp}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${p75_inp}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${p75_cls}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${p75_fcp}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${p75_ttfb}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${p75_dcl}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${p75_fp}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${p75_ol}
      {% else %} NULL {% endif %} ;;
    hidden: no
  }

  measure: dynamic_p75_past_month {
    group_label: "Dynamic Performance Metrics"
    description: "Compares the 75th percentile value for the selected metric to the previous month."
    label: "{% if dynamic_metric._parameter_value == 'lcp' %}p75 LCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'inp' %}p75 INP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'cls' %}p75 CLS (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fcp' %}p75 FCP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ttfb' %}p75 TTFB (Past Month)
    {% elsif dynamic_metric._parameter_value == 'dcl' %}p75 DCL (Past Month)
    {% elsif dynamic_metric._parameter_value == 'fp' %}p75 FP (Past Month)
    {% elsif dynamic_metric._parameter_value == 'ol' %}p75 Onload (Past Month)
    {% else %}p75 (Past Month){% endif %}"
    type: period_over_period
    based_on: dynamic_p75
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
  }


#--- Base Dimensions ----------------------------------------------------

  dimension: avg_good_cls {
    type: number
    sql: ${TABLE}.avg_good_cls ;;
  }
  dimension: avg_ni_cls {
    type: number
    sql: ${TABLE}.avg_ni_cls ;;
  }
  dimension: avg_poor_cls {
    type: number
    sql: ${TABLE}.avg_poor_cls ;;
  }
  dimension: normal_good_cls {
    type: number
    sql: SAFE_DIVIDE(${avg_good_cls},(${avg_good_cls} + ${avg_ni_cls} + ${avg_poor_cls})) ;;
  }
  dimension: normal_ni_cls {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_cls},(${avg_good_cls} + ${avg_ni_cls} + ${avg_poor_cls})) ;;
  }
  dimension: normal_poor_cls {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_cls},(${avg_good_cls} + ${avg_ni_cls} + ${avg_poor_cls})) ;;
  }
  dimension: p75_cls {
    type: number
    sql: ${TABLE}.avg_p75_cls ;;
  }

  dimension: avg_good_lcp {
    type: number
    sql: ${TABLE}.avg_good_lcp ;;
  }
  dimension: avg_ni_lcp {
    type: number
    sql: ${TABLE}.avg_ni_lcp ;;
  }
  dimension: avg_poor_lcp {
    type: number
    sql: ${TABLE}.avg_poor_lcp ;;
  }
  dimension: normal_good_lcp {
    type: number
    sql: SAFE_DIVIDE(${avg_good_lcp},(${avg_good_lcp} + ${avg_ni_lcp} + ${avg_poor_lcp})) ;;
  }
  dimension: normal_ni_lcp {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_lcp},(${avg_good_lcp} + ${avg_ni_lcp} + ${avg_poor_lcp})) ;;
  }
  dimension: normal_poor_lcp {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_lcp},(${avg_good_lcp} + ${avg_ni_lcp} + ${avg_poor_lcp})) ;;
  }
  dimension: p75_lcp {
    type: number
    sql: ${TABLE}.avg_p75_lcp ;;
  }

  dimension: avg_good_inp {
    type: number
    sql: ${TABLE}.avg_good_inp ;;
  }
  dimension: avg_ni_inp {
    type: number
    sql: ${TABLE}.avg_ni_inp ;;
  }
  dimension: avg_poor_inp {
    type: number
    sql: ${TABLE}.avg_poor_inp ;;
  }
  dimension: normal_good_inp {
    type: number
    sql: SAFE_DIVIDE(${avg_good_inp},(${avg_good_inp} + ${avg_ni_inp} + ${avg_poor_inp})) ;;
  }
  dimension: normal_ni_inp {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_inp},(${avg_good_inp} + ${avg_ni_inp} + ${avg_poor_inp})) ;;
  }
  dimension: normal_poor_inp {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_inp},(${avg_good_inp} + ${avg_ni_inp} + ${avg_poor_inp})) ;;
  }
  dimension: p75_inp {
    type: number
    sql: ${TABLE}.avg_p75_inp ;;
  }

  dimension: avg_good_fcp {
    type: number
    sql: ${TABLE}.avg_good_fcp ;;
  }
  dimension: avg_ni_fcp {
    type: number
    sql: ${TABLE}.avg_ni_fcp ;;
  }
  dimension: avg_poor_fcp {
    type: number
    sql: ${TABLE}.avg_poor_fcp ;;
  }
  dimension: normal_good_fcp {
    type: number
    sql: SAFE_DIVIDE(${avg_good_fcp},(${avg_good_fcp} + ${avg_ni_fcp} + ${avg_poor_fcp})) ;;
  }
  dimension: normal_ni_fcp {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_fcp},(${avg_good_fcp} + ${avg_ni_fcp} + ${avg_poor_fcp})) ;;
  }
  dimension: normal_poor_fcp {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_fcp},(${avg_good_fcp} + ${avg_ni_fcp} + ${avg_poor_fcp})) ;;
  }
  dimension: p75_fcp {
    type: number
    sql: ${TABLE}.avg_p75_fcp ;;
  }

  dimension: avg_good_ttfb {
    type: number
    sql: ${TABLE}.avg_good_ttfb ;;
  }
  dimension: avg_ni_ttfb {
    type: number
    sql: ${TABLE}.avg_ni_ttfb ;;
  }
  dimension: avg_poor_ttfb {
    type: number
    sql: ${TABLE}.avg_poor_ttfb ;;
  }
  dimension: normal_good_ttfb {
    type: number
    sql: SAFE_DIVIDE(${avg_good_ttfb},(${avg_good_ttfb} + ${avg_ni_ttfb} + ${avg_poor_ttfb})) ;;
  }
  dimension: normal_ni_ttfb {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_ttfb},(${avg_good_ttfb} + ${avg_ni_ttfb} + ${avg_poor_ttfb})) ;;
  }
  dimension: normal_poor_ttfb {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_ttfb},(${avg_good_ttfb} + ${avg_ni_ttfb} + ${avg_poor_ttfb})) ;;
  }
  dimension: p75_ttfb {
    type: number
    sql: ${TABLE}.avg_p75_ttfb ;;
  }

  dimension: avg_good_fp {
    type: number
    sql: ${TABLE}.avg_good_fp ;;
  }
  dimension: avg_ni_fp {
    type: number
    sql: ${TABLE}.avg_ni_fp ;;
  }
  dimension: avg_poor_fp {
    type: number
    sql: ${TABLE}.avg_poor_fp ;;
  }
  dimension: normal_good_fp {
    type: number
    sql: SAFE_DIVIDE(${avg_good_fp},(${avg_good_fp} + ${avg_ni_fp} + ${avg_poor_fp})) ;;
  }
  dimension: normal_ni_fp {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_fp},(${avg_good_fp} + ${avg_ni_fp} + ${avg_poor_fp})) ;;
  }
  dimension: normal_poor_fp {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_fp},(${avg_good_fp} + ${avg_ni_fp} + ${avg_poor_fp})) ;;
  }
  dimension: p75_fp {
    type: number
    sql: ${TABLE}.avg_p75_fp ;;
  }

  dimension: avg_good_dcl {
    type: number
    sql: ${TABLE}.avg_good_dcl ;;
  }
  dimension: avg_ni_dcl {
    type: number
    sql: ${TABLE}.avg_ni_dcl ;;
  }
  dimension: avg_poor_dcl {
    type: number
    sql: ${TABLE}.avg_poor_dcl ;;
  }
  dimension: normal_good_dcl {
    type: number
    sql: SAFE_DIVIDE(${avg_good_dcl},(${avg_good_dcl} + ${avg_ni_dcl} + ${avg_poor_dcl})) ;;
  }
  dimension: normal_ni_dcl {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_dcl},(${avg_good_dcl} + ${avg_ni_dcl} + ${avg_poor_dcl})) ;;
  }
  dimension: normal_poor_dcl {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_dcl},(${avg_good_dcl} + ${avg_ni_dcl} + ${avg_poor_dcl})) ;;
  }
  dimension: p75_dcl {
    type: number
    sql: ${TABLE}.avg_p75_dcl ;;
  }

  dimension: avg_good_ol {
    type: number
    sql: ${TABLE}.avg_good_ol ;;
  }
  dimension: avg_ni_ol {
    type: number
    sql: ${TABLE}.avg_ni_ol ;;
  }
  dimension: avg_poor_ol {
    type: number
    sql: ${TABLE}.avg_poor_ol ;;
  }
  dimension: normal_good_ol {
    type: number
    sql: SAFE_DIVIDE(${avg_good_ol},(${avg_good_ol} + ${avg_ni_ol} + ${avg_poor_ol})) ;;
  }
  dimension: normal_ni_ol {
    type: number
    sql: SAFE_DIVIDE(${avg_ni_ol},(${avg_good_ol} + ${avg_ni_ol} + ${avg_poor_ol})) ;;
  }
  dimension: normal_poor_ol {
    type: number
    sql: SAFE_DIVIDE(${avg_poor_ol},(${avg_good_ol} + ${avg_ni_ol} + ${avg_poor_ol})) ;;
  }
  dimension: p75_ol {
    type: number
    sql: ${TABLE}.avg_p75_ol ;;
  }

  dimension: total_desktop_traffic_proportion {
    type: number
    sql: ${TABLE}.total_desktop_traffic_proportion ;;
  }
  dimension: total_phone_traffic_proportion {
    type: number
    sql: ${TABLE}.total_phone_traffic_proportion ;;
  }
  dimension: total_tablet_traffic_proportion {
    type: number
    sql: ${TABLE}.total_tablet_traffic_proportion ;;
  }
  dimension: normal_desktop_density {
    type: number
    sql: SAFE_DIVIDE(${total_desktop_traffic_proportion}, (${total_desktop_traffic_proportion} + ${total_phone_traffic_proportion} + ${total_tablet_traffic_proportion})) ;;
  }
  dimension: normal_phone_density {
    type: number
    sql: SAFE_DIVIDE(${total_phone_traffic_proportion}, (${total_desktop_traffic_proportion} + ${total_phone_traffic_proportion} + ${total_tablet_traffic_proportion})) ;;
  }
  dimension: normal_tablet_density {
    type: number
    sql: SAFE_DIVIDE(${total_tablet_traffic_proportion}, (${total_desktop_traffic_proportion} + ${total_phone_traffic_proportion} + ${total_tablet_traffic_proportion})) ;;
  }

  dimension: total_4g_density {
    type: number
    sql: ${TABLE}.total_4g_density ;;
  }
  dimension: total_3g_density {
    type: number
    sql: ${TABLE}.total_3g_density ;;
  }
  dimension: total_2g_density {
    type: number
    sql: ${TABLE}.total_2g_density ;;
  }
  dimension: total_slow2g_density {
    type: number
    sql: ${TABLE}.total_slow2g_density ;;
  }
  dimension: total_offline_density {
    type: number
    sql: ${TABLE}.total_offline_density ;;
  }
  dimension: normal_4g_density {
    type: number
    sql: SAFE_DIVIDE(${total_4g_density}, (${total_4g_density} + ${total_3g_density} + ${total_2g_density} + ${total_slow2g_density} + ${total_offline_density})) ;;
  }
  dimension: normal_3g_density {
    type: number
    sql: SAFE_DIVIDE(${total_3g_density}, (${total_4g_density} + ${total_3g_density} + ${total_2g_density} + ${total_slow2g_density} + ${total_offline_density})) ;;
  }
  dimension: normal_2g_density {
    type: number
    sql: SAFE_DIVIDE(${total_2g_density}, (${total_4g_density} + ${total_3g_density} + ${total_2g_density} + ${total_slow2g_density} + ${total_offline_density})) ;;
  }
  dimension: normal_slow2g_density {
    type: number
    sql: SAFE_DIVIDE(${total_slow2g_density}, (${total_4g_density} + ${total_3g_density} + ${total_2g_density} + ${total_slow2g_density} + ${total_offline_density})) ;;
  }
  dimension: normal_offline_density {
    type: number
    sql: SAFE_DIVIDE(${total_offline_density}, (${total_4g_density} + ${total_3g_density} + ${total_2g_density} + ${total_slow2g_density} + ${total_offline_density})) ;;
  }


  dimension: total_notification_accept_proportion {
    type: number
    sql: ${TABLE}.total_notification_accept_proportion ;;
  }
  dimension: total_notification_deny_proportion {
    type: number
    sql: ${TABLE}.total_notification_deny_proportion ;;
  }
  dimension: total_notification_dismiss_proportion {
    type: number
    sql: ${TABLE}.total_notification_dismiss_proportion ;;
  }
  dimension: total_notification_ignore_proportion {
    type: number
    sql: ${TABLE}.total_notification_ignore_proportion ;;
  }
  dimension: normal_notification_accept {
    type: number
    sql: SAFE_DIVIDE(${total_notification_accept_proportion}, (${total_notification_accept_proportion} + ${total_notification_deny_proportion} + ${total_notification_dismiss_proportion} + ${total_notification_ignore_proportion})) ;;
  }
  dimension: normal_notification_deny {
    type: number
    sql: SAFE_DIVIDE(${total_notification_deny_proportion}, (${total_notification_accept_proportion} + ${total_notification_deny_proportion} + ${total_notification_dismiss_proportion} + ${total_notification_ignore_proportion})) ;;
  }
  dimension: normal_notification_dismiss {
    type: number
    sql: SAFE_DIVIDE(${total_notification_dismiss_proportion}, (${total_notification_accept_proportion} + ${total_notification_deny_proportion} + ${total_notification_dismiss_proportion} + ${total_notification_ignore_proportion})) ;;
  }
  dimension: normal_notification_ignore {
    type: number
    sql: SAFE_DIVIDE(${total_notification_ignore_proportion}, (${total_notification_accept_proportion} + ${total_notification_deny_proportion} + ${total_notification_dismiss_proportion} + ${total_notification_ignore_proportion})) ;;
  }

  dimension: total_navigate_nav_proportion {
    type: number
    sql: ${TABLE}.total_navigate_nav_proportion ;;
  }
  dimension: total_back_forward_cache_nav_proportion {
    type: number
    sql: ${TABLE}.total_back_forward_cache_nav_proportion ;;
  }
  dimension: total_reload_nav_proportion {
    type: number
    sql: ${TABLE}.total_reload_nav_proportion ;;
  }
  dimension: total_back_forward_nav_proportion {
    type: number
    sql: ${TABLE}.total_back_forward_nav_proportion ;;
  }
  dimension: total_navigate_cache_nav_proportion {
    type: number
    sql: ${TABLE}.total_navigate_cache_nav_proportion ;;
  }
  dimension: total_prerender_nav_proportion {
    type: number
    sql: ${TABLE}.total_prerender_nav_proportion ;;
  }
  dimension: total_restore_nav_proportion {
    type: number
    sql: ${TABLE}.total_restore_nav_proportion ;;
  }

  dimension: normal_navigate_nav {
    type: number
    sql: SAFE_DIVIDE(${total_navigate_nav_proportion}, (${total_navigate_nav_proportion} + ${total_back_forward_cache_nav_proportion} + ${total_reload_nav_proportion} + ${total_back_forward_nav_proportion} + ${total_navigate_cache_nav_proportion} + ${total_prerender_nav_proportion} + ${total_restore_nav_proportion})) ;;
  }
  dimension: normal_back_forward_cache_nav {
    type: number
    sql: SAFE_DIVIDE(${total_back_forward_cache_nav_proportion}, (${total_navigate_nav_proportion} + ${total_back_forward_cache_nav_proportion} + ${total_reload_nav_proportion} + ${total_back_forward_nav_proportion} + ${total_navigate_cache_nav_proportion} + ${total_prerender_nav_proportion} + ${total_restore_nav_proportion})) ;;
  }
  dimension: normal_reload_nav {
    type: number
    sql: SAFE_DIVIDE(${total_reload_nav_proportion}, (${total_navigate_nav_proportion} + ${total_back_forward_cache_nav_proportion} + ${total_reload_nav_proportion} + ${total_back_forward_nav_proportion} + ${total_navigate_cache_nav_proportion} + ${total_prerender_nav_proportion} + ${total_restore_nav_proportion})) ;;
  }
  dimension: normal_prerender_nav {
    type: number
    sql: SAFE_DIVIDE(${total_prerender_nav_proportion}, (${total_navigate_nav_proportion} + ${total_back_forward_cache_nav_proportion} + ${total_reload_nav_proportion} + ${total_back_forward_nav_proportion} + ${total_navigate_cache_nav_proportion} + ${total_prerender_nav_proportion} + ${total_restore_nav_proportion})) ;;
  }



#--- Static Performance Metrics -------------------------------------------------------------

  measure: good_cls {
    group_label: "Cumulative Layout Shift"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for Cumulative Layout Shift."
    type: average
    sql: ${normal_good_cls} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_cls_past_month {
    group_label: "Cumulative Layout Shift"
    label: "Good (Past Month)"
    description: "Compares the 'Good' CLS percentage to the previous month."
    type: period_over_period
    based_on: good_cls
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_cls {
    group_label: "Cumulative Layout Shift"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for Cumulative Layout Shift."
    type: average
    sql: ${normal_ni_cls} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_cls_past_month {
    group_label: "Cumulative Layout Shift"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' CLS percentage to the previous month."
    type: period_over_period
    based_on: ni_cls
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_cls {
    group_label: "Cumulative Layout Shift"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for Cumulative Layout Shift."
    type: average
    sql: ${normal_poor_cls} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_cls_past_month {
    group_label: "Cumulative Layout Shift"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' CLS percentage to the previous month."
    type: period_over_period
    based_on: poor_cls
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_cls {
    group_label: "Cumulative Layout Shift"
    label: "p75"
    description: "The 75th percentile value of CLS, representing the experience of most users."
    type: average
    sql: ${p75_cls} ;;
    hidden: no
    value_format_name: decimal_4
  }
  measure: percentile75_cls_last_month {
    group_label: "Cumulative Layout Shift"
    label: "p75 (Past Month)"
    description: "Compares the p75 CLS value to the previous month."
    type: period_over_period
    based_on: percentile75_cls
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_4
  }

  measure: good_lcp {
    group_label: "Largest Contentful Paint"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for Largest Contentful Paint."
    type: average
    sql: ${normal_good_lcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_lcp_past_month {
    group_label: "Largest Contentful Paint"
    label: "Good (Past Month)"
    description: "Compares the 'Good' LCP percentage to the previous month."
    type: period_over_period
    based_on: good_lcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_lcp {
    group_label: "Largest Contentful Paint"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for Largest Contentful Paint."
    type: average
    sql: ${normal_ni_lcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_lcp_past_month {
    group_label: "Largest Contentful Paint"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' LCP percentage to the previous month."
    type: period_over_period
    based_on: ni_lcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_lcp {
    group_label: "Largest Contentful Paint"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for Largest Contentful Paint."
    type: average
    sql: ${normal_poor_lcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_lcp_past_month {
    group_label: "Largest Contentful Paint"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' LCP percentage to the previous month."
    type: period_over_period
    based_on: poor_lcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_lcp {
    group_label: "Largest Contentful Paint"
    label: "p75 (ms)"
    description: "The 75th percentile value of LCP, representing the experience of most users."
    type: average
    sql: ${p75_lcp} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_lcp_last_month {
    group_label: "Largest Contentful Paint"
    label: "p75 (Past Month)"
    description: "Compares the p75 LCP value to the previous month."
    type: period_over_period
    based_on: percentile75_lcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_inp {
    group_label: "Interaction to Next Paint"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for Interaction to Next Paint."
    type: average
    sql: ${normal_good_inp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_inp_past_month {
    group_label: "Interaction to Next Paint"
    label: "Good (Past Month)"
    description: "Compares the 'Good' INP percentage to the previous month."
    type: period_over_period
    based_on: good_inp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_inp {
    group_label: "Interaction to Next Paint"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for Interaction to Next Paint."
    type: average
    sql: ${normal_ni_inp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_inp_past_month {
    group_label: "Interaction to Next Paint"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' INP percentage to the previous month."
    type: period_over_period
    based_on: ni_inp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_inp {
    group_label: "Interaction to Next Paint"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for Interaction to Next Paint."
    type: average
    sql: ${normal_poor_inp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_inp_past_month {
    group_label: "Interaction to Next Paint"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' INP percentage to the previous month."
    type: period_over_period
    based_on: poor_inp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_inp {
    group_label: "Interaction to Next Paint"
    label: "p75 (ms)"
    description: "The 75th percentile value of INP, representing the experience of most users."
    type: average
    sql: ${p75_inp} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_inp_last_month {
    group_label: "Interaction to Next Paint"
    label: "p75 (Past Month)"
    description: "Compares the p75 INP value to the previous month."
    type: period_over_period
    based_on: percentile75_inp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_fcp {
    group_label: "First Contentful Paint"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for First Contentful Paint."
    type: average
    sql: ${normal_good_fcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_fcp_past_month {
    group_label: "First Contentful Paint"
    label: "Good (Past Month)"
    description: "Compares the 'Good' FCP percentage to the previous month."
    type: period_over_period
    based_on: good_fcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_fcp {
    group_label: "First Contentful Paint"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for First Contentful Paint."
    type: average
    sql: ${normal_ni_fcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_fcp_past_month {
    group_label: "First Contentful Paint"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' FCP percentage to the previous month."
    type: period_over_period
    based_on: ni_fcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_fcp {
    group_label: "First Contentful Paint"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for First Contentful Paint."
    type: average
    sql: ${normal_poor_fcp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_fcp_past_month {
    group_label: "First Contentful Paint"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' FCP percentage to the previous month."
    type: period_over_period
    based_on: poor_fcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_fcp {
    group_label: "First Contentful Paint"
    label: "p75 (ms)"
    description: "The 75th percentile value of FCP, representing the experience of most users."
    type: average
    sql: ${p75_fcp} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_fcp_last_month {
    group_label: "First Contentful Paint"
    label: "p75 (Past Month)"
    description: "Compares the p75 FCP value to the previous month."
    type: period_over_period
    based_on: percentile75_fcp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_ttfb {
    group_label: "Time to First Byte"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for Time to First Byte."
    type: average
    sql: ${normal_good_ttfb} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_ttfb_past_month {
    group_label: "Time to First Byte"
    label: "Good (Past Month)"
    description: "Compares the 'Good' TTFB percentage to the previous month."
    type: period_over_period
    based_on: good_ttfb
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_ttfb {
    group_label: "Time to First Byte"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for Time to First Byte."
    type: average
    sql: ${normal_ni_ttfb} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_ttfb_past_month {
    group_label: "Time to First Byte"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' TTFB percentage to the previous month."
    type: period_over_period
    based_on: ni_ttfb
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_ttfb {
    group_label: "Time to First Byte"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for Time to First Byte."
    type: average
    sql: ${normal_poor_ttfb} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_ttfb_past_month {
    group_label: "Time to First Byte"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' TTFB percentage to the previous month."
    type: period_over_period
    based_on: poor_ttfb
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_ttfb {
    group_label: "Time to First Byte"
    label: "p75 (ms)"
    description: "The 75th percentile value of TTFB, representing the experience of most users."
    type: average
    sql: ${p75_ttfb} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_ttfb_last_month {
    group_label: "Time to First Byte"
    label: "p75 (Past Month)"
    description: "Compares the p75 TTFB value to the previous month."
    type: period_over_period
    based_on: percentile75_ttfb
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_fp {
    group_label: "First Paint"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for First Paint."
    type: average
    sql: ${normal_good_fp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_fp_past_month {
    group_label: "First Paint"
    label: "Good (Past Month)"
    description: "Compares the 'Good' FP percentage to the previous month."
    type: period_over_period
    based_on: good_fp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_fp {
    group_label: "First Paint"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for First Paint."
    type: average
    sql: ${normal_ni_fp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_fp_past_month {
    group_label: "First Paint"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' FP percentage to the previous month."
    type: period_over_period
    based_on: ni_fp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_fp {
    group_label: "First Paint"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for First Paint."
    type: average
    sql: ${normal_poor_fp} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_fp_past_month {
    group_label: "First Paint"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' FP percentage to the previous month."
    type: period_over_period
    based_on: poor_fp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_fp {
    group_label: "First Paint"
    label: "p75 (ms)"
    description: "The 75th percentile value of FP, representing the experience of most users."
    type: average
    sql: ${p75_fp} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_fp_last_month {
    group_label: "First Paint"
    label: "p75 (Past Month)"
    description: "Compares the p75 FP value to the previous month."
    type: period_over_period
    based_on: percentile75_fp
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_dcl {
    group_label: "DOM Content Loaded"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for DOM Content Loaded."
    type: average
    sql: ${normal_good_dcl} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_dcl_past_month {
    group_label: "DOM Content Loaded"
    label: "Good (Past Month)"
    description: "Compares the 'Good' DCL percentage to the previous month."
    type: period_over_period
    based_on: good_dcl
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_dcl {
    group_label: "DOM Content Loaded"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for DOM Content Loaded."
    type: average
    sql: ${normal_ni_dcl} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_dcl_past_month {
    group_label: "DOM Content Loaded"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' DCL percentage to the previous month."
    type: period_over_period
    based_on: ni_dcl
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_dcl {
    group_label: "DOM Content Loaded"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for DOM Content Loaded."
    type: average
    sql: ${normal_poor_dcl} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_dcl_past_month {
    group_label: "DOM Content Loaded"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' DCL percentage to the previous month."
    type: period_over_period
    based_on: poor_dcl
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_dcl {
    group_label: "DOM Content Loaded"
    label: "p75 (ms)"
    description: "The 75th percentile value of DCL, representing the experience of most users."
    type: average
    sql: ${p75_dcl} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_dcl_last_month {
    group_label: "DOM Content Loaded"
    label: "p75 (Past Month)"
    description: "Compares the p75 DCL value to the previous month."
    type: period_over_period
    based_on: percentile75_dcl
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }

  measure: good_ol {
    group_label: "Onload"
    label: "Good"
    description: "The percentage of user experiences that are categorized as 'Good' for Onload."
    type: average
    sql: ${normal_good_ol} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: good_ol_past_month {
    group_label: "Onload"
    label: "Good (Past Month)"
    description: "Compares the 'Good' Onload percentage to the previous month."
    type: period_over_period
    based_on: good_ol
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: ni_ol {
    group_label: "Onload"
    label: "Needs Improvement"
    description: "The percentage of user experiences that are categorized as 'Needs Improvement' for Onload."
    type: average
    sql: ${normal_ni_ol} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: ni_ol_past_month {
    group_label: "Onload"
    label: "Needs Improvement (Past Month)"
    description: "Compares the 'Needs Improvement' Onload percentage to the previous month."
    type: period_over_period
    based_on: ni_ol
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: poor_ol {
    group_label: "Onload"
    label: "Poor"
    description: "The percentage of user experiences that are categorized as 'Poor' for Onload."
    type: average
    sql: ${normal_poor_ol} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: poor_ol_past_month {
    group_label: "Onload"
    label: "Poor (Past Month)"
    description: "Compares the 'Poor' Onload percentage to the previous month."
    type: period_over_period
    based_on: poor_ol
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: percentile75_ol {
    group_label: "Onload"
    label: "p75 (ms)"
    description: "The 75th percentile value of Onload, representing the experience of most users."
    type: average
    sql: ${p75_ol} ;;
    hidden: no
    value_format_name: decimal_0
  }
  measure: percentile75_ol_last_month {
    group_label: "Onload"
    label: "p75 (Past Month)"
    description: "Compares the p75 Onload value to the previous month."
    type: period_over_period
    based_on: percentile75_ol
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: decimal_0
  }


#--- Distribution Metrics --------------------------------------------------------------------

  measure: desktop_density {
    group_label: "Device Distribution"
    label: "Desktop"
    description: "The percentage of total traffic from desktop devices."
    type: average
    sql: ${normal_desktop_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: desktop_density_past_month {
    group_label: "Device Distribution"
    label: "Desktop (Past Month)"
    description: "Compares the Desktop traffic percentage to the previous month."
    type: period_over_period
    based_on: desktop_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }

  measure: phone_density {
    group_label: "Device Distribution"
    label: "Phone"
    description: "The percentage of total traffic from phone devices."
    type: average
    sql: ${normal_phone_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: phone_density_past_month {
    group_label: "Device Distribution"
    label: "Phone (Past Month)"
    description: "Compares the Phone traffic percentage to the previous month."
    type: period_over_period
    based_on: phone_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }

  measure: tablet_density {
    group_label: "Device Distribution"
    label: "Tablet"
    description: "The percentage of total traffic from tablet devices."
    type: average
    sql: ${normal_tablet_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: tablet_density_past_month {
    group_label: "Device Distribution"
    label: "Tablet (Past Month)"
    description: "Compares the Tablet traffic percentage to the previous month."
    type: period_over_period
    based_on: tablet_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }


  measure: _4g_density {
    group_label: "Connection Distribution"
    label: "4G"
    description: "The percentage of total traffic from 4G or faster connections."
    type: average
    sql: ${normal_4g_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: _4g_density_past_month {
    group_label: "Connection Distribution"
    label: "4G (Past Month)"
    description: "Compares the 4G traffic percentage to the previous month."
    type: period_over_period
    based_on: _4g_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: _3g_density {
    group_label: "Connection Distribution"
    label: "3G"
    description: "The percentage of total traffic from 3G connections."
    type: average
    sql: ${normal_3g_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: _3g_density_past_month {
    group_label: "Connection Distribution"
    label: "3G (Past Month)"
    description: "Compares the 3G traffic percentage to the previous month."
    type: period_over_period
    based_on: _3g_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: _2g_density {
    group_label: "Connection Distribution"
    label: "2G"
    description: "The percentage of total traffic from 2G connections."
    type: average
    sql: ${normal_2g_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: _2g_density_past_month {
    group_label: "Connection Distribution"
    label: "2G (Past Month)"
    description: "Compares the 2G traffic percentage to the previous month."
    type: period_over_period
    based_on: _2g_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: slow_2g_density {
    group_label: "Connection Distribution"
    label: "Slow 2G"
    description: "The percentage of total traffic from Slow 2G connections."
    type: average
    sql: ${normal_slow2g_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: slow_2g_density_past_month {
    group_label: "Connection Distribution"
    label: "Slow 2G (Past Month)"
    description: "Compares the Slow 2G traffic percentage to the previous month."
    type: period_over_period
    based_on: slow_2g_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: offline_density {
    group_label: "Connection Distribution"
    label: "Offline"
    description: "The percentage of total traffic from Offline connections."
    type: average
    sql: ${normal_offline_density} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: offline_density_past_month {
    group_label: "Connection Distribution"
    label: "Offline (Past Month)"
    description: "Compares the Offline traffic percentage to the previous month."
    type: period_over_period
    based_on: offline_density
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }


  measure: notification_accept {
    group_label: "Notification Permissions"
    label: "Accepted"
    description: "The percentage of notification prompts that were accepted by the user."
    type: average
    sql: ${normal_notification_accept} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: notification_accept_past_month {
    group_label: "Notification Permissions"
    label: "Accepted (Past Month)"
    description: "Compares the Accepted Notification Prompts percentage to the previous month."
    type: period_over_period
    based_on: notification_accept
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: notification_deny {
    group_label: "Notification Permissions"
    label: "Denied"
    description: "The percentage of notification prompts that were denied by the user."
    type: average
    sql: ${normal_notification_deny} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: notification_deny_past_month {
    group_label: "Notification Permissions"
    label: "Denied (Past Month)"
    description: "Compares the Denied Notification Prompts percentage to the previous month."
    type: period_over_period
    based_on: notification_deny
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: notification_dismiss {
    group_label: "Notification Permissions"
    label: "Dismissed"
    description: "The percentage of notification prompts that were dismissed by the user."
    type: average
    sql: ${normal_notification_dismiss} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: notification_dismiss_past_month {
    group_label: "Notification Permissions"
    label: "Dismissed (Past Month)"
    description: "Compares the Dismissed Notification Prompts percentage to the previous month."
    type: period_over_period
    based_on: notification_dismiss
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: notification_ignore {
    group_label: "Notification Permissions"
    label: "Ignored"
    description: "The percentage of notification prompts that were ignored by the user."
    type: average
    sql: ${normal_notification_ignore} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: notification_ignore_past_month {
    group_label: "Notification Permissions"
    label: "Ignored (Past Month)"
    description: "Compares the Ignored Notification Prompts percentage to the previous month."
    type: period_over_period
    based_on: notification_ignore
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }

  measure: navigate_proportion {
    group_label: "Navigation Distribution"
    label: "Navigate"
    description: "The percentage of navigations initiated by following a link, using a bookmark, or typing a URL."
    type: average
    sql: ${normal_navigate_nav} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: navigate_proportion_past_month {
    group_label: "Navigation Distribution"
    label: "Navigate (Past Month)"
    description: "Compares the 'Navigate' type percentage to the previous month."
    type: period_over_period
    based_on: navigate_proportion
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: back_forward_cache_proportion {
    group_label: "Navigation Distribution"
    label: "Back/Forward Cache"
    description: "The percentage of navigations served instantly from the back/forward cache."
    type: average
    sql: ${normal_back_forward_cache_nav} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: back_forward_cache_proportion_past_month {
    group_label: "Navigation Distribution"
    label: "Back/Forward Cache (Past Month)"
    description: "Compares the 'Back/Forward Cache' type percentage to the previous month."
    type: period_over_period
    based_on: back_forward_cache_proportion
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: reload_proportion {
    group_label: "Navigation Distribution"
    label: "Reload"
    description: "The percentage of navigations initiated by the user reloading the page."
    type: average
    sql: ${normal_reload_nav} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: reload_proportion_past_month {
    group_label: "Navigation Distribution"
    label: "Reload (Past Month)"
    description: "Compares the 'Reload' type percentage to the previous month."
    type: period_over_period
    based_on: reload_proportion
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
  measure: prerender_proportion {
    group_label: "Navigation Distribution"
    label: "Prerender"
    description: "The percentage of navigations served from a prerendered state."
    type: average
    sql: ${normal_prerender_nav} ;;
    value_format_name: percent_2
    hidden: no
  }
  measure: prerender_proportion_past_month {
    group_label: "Navigation Distribution"
    label: "Prerender (Past Month)"
    description: "Compares the 'Prerender' type percentage to the previous month."
    type: period_over_period
    based_on: prerender_proportion
    based_on_time: date_month
    period: month
    kind: previous
    hidden: no
    value_format_name: percent_2
  }
}
