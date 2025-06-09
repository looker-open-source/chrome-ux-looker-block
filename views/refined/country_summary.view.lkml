include: "../raw/**.view.lkml"
view: +country_summary {

  derived_table: {
    sql:SELECT
          *,
          GENERATE_UUID() as primary_key,
          PARSE_TIMESTAMP('%Y%m%d', CAST(yyyymm AS STRING) || '01') AS date
        FROM `@{CRUX_PUBLIC_PROJECT_ID}.@{CRUX_DATASET}.country_summary` ;;
  }

  dimension: crux_vis_tool {
    type: string
    html:  <p style="font-size: 16px;">👉 Try <a href="https://cruxvis.withgoogle.com/#/?view=cwvsummary&url={{ country_summary.origin._value | url_encode }}" target="_blank" style="text-decoration: none;">CrUX Vis</a> to visualize the Core Web Vitals from CrUX as time series!</p> ;;
    hidden: yes
    sql: " ";;
  }
  #  https://cruxvis.withgoogle.com/#/?view=cwvsummary&url=https://cloud.google.com
  ### PARAMETERS ###

  parameter: dynamic_metric {
    hidden: no
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
      value: "dcl"
      label: "DOM Content Loaded (DCL)"
    }
    allowed_value: {
      value: "fcp"
      label: "First Contentful Paint (FCP)"
    }
    allowed_value: {
      value: "fid"
      label: "First Input Delay (FID)"
    }
    allowed_value: {
      value: "fp"
      label: "First Paint (FP)"
    }
    allowed_value: {
      value: "ol"
      label: "Onload (OL)"
    }
    allowed_value: {
      value: "ttfb"
      label: "Time to First Byte (TTFB)"
    }
  }

  measure: dynamic_good_pct_metric{
    # label_from_parameter: dynamic_metric
    type: number
    value_format_name: percent_2

    group_label: "Dynamic Core Metrics"

    description: "Displays the 'Good' performance percentage for the Core Web Vitals metric selected by the user."

    label: "{% if dynamic_metric._parameter_value == 'lcp' %} Good LCP %
    {% elsif dynamic_metric._parameter_value == 'inp' %} Good INP %
    {% elsif dynamic_metric._parameter_value == 'cls' %} Good CLS %
    {% elsif dynamic_metric._parameter_value == 'dcl' %} Good DCL %
    {% elsif dynamic_metric._parameter_value == 'fcp' %} Good FCP %
    {% elsif dynamic_metric._parameter_value == 'fid' %} Good FID %
    {% elsif dynamic_metric._parameter_value == 'fp' %} Good FP %
    {% elsif dynamic_metric._parameter_value == 'ol' %} Good Onload %
    {% elsif dynamic_metric._parameter_value == 'ttfb' %} Good TTFB %
    {% else %} Good %
    {% endif %}"

    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${avg_good_lcp_pct}
        {% elsif dynamic_metric._parameter_value == "inp" %} ${avg_good_inp_pct}
        {% elsif dynamic_metric._parameter_value == "cls" %} ${avg_good_cls_pct}
        {% elsif dynamic_metric._parameter_value == "dcl" %} ${avg_good_dcl_pct}
        {% elsif dynamic_metric._parameter_value == "fcp" %} ${avg_good_fcp_pct}
        {% elsif dynamic_metric._parameter_value == "fid" %} ${avg_good_fid_pct}
        {% elsif dynamic_metric._parameter_value == "fp" %} ${avg_good_fp_pct}
        {% elsif dynamic_metric._parameter_value == "ol" %} ${avg_good_ol_pct}
        {% elsif dynamic_metric._parameter_value == "ttfb" %} ${avg_good_ttfb_pct}
        {% else %} ${avg_good_lcp_pct}
      {% endif %};;
      hidden: no
  }

  measure: dynamic_ni_pct_metric {
    type: number
    value_format_name: percent_2
    hidden: no

    group_label: "Dynamic Core Metrics"

    description: "Displays the 'Needs Improvement' performance percentage for the Core Web Vitals metric selected by the user."

    # Dynamic label for "Needs Improvement"
    label: "{% if dynamic_metric._parameter_value == 'lcp' %} NIP LCP %
    {% elsif dynamic_metric._parameter_value == 'inp' %} NIP INP %
    {% elsif dynamic_metric._parameter_value == 'cls' %} NIP CLS %
    {% elsif dynamic_metric._parameter_value == 'dcl' %} NIP DCL %
    {% elsif dynamic_metric._parameter_value == 'fcp' %} NIP FCP %
    {% elsif dynamic_metric._parameter_value == 'fid' %} NIP FID %
    {% elsif dynamic_metric._parameter_value == 'fp' %} NIP FP %
    {% elsif dynamic_metric._parameter_value == 'ol' %} NIP Onload %
    {% elsif dynamic_metric._parameter_value == 'ttfb' %} NIP TTFB %
    {% else %} Needs Improvement %
    {% endif %}"

    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${avg_ni_lcp_pct}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${avg_ni_inp_pct}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${avg_ni_cls_pct}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${avg_ni_dcl_pct}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${avg_ni_fcp_pct}
      {% elsif dynamic_metric._parameter_value == "fid" %} ${avg_ni_fid_pct}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${avg_ni_fp_pct}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${avg_ni_ol_pct}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${avg_ni_ttfb_pct}
      {% else %} ${avg_ni_lcp_pct}
      {% endif %};;
  }

  measure: dynamic_poor_pct_metric {
    type: number
    value_format_name: percent_2
    hidden: no

    group_label: "Dynamic Core Metrics"

    description: "Displays the 'Poor' performance percentage for the Core Web Vitals metric selected by the user."

    # Dynamic label for "Poor"
    label: "{% if dynamic_metric._parameter_value == 'lcp' %} Poor LCP %
    {% elsif dynamic_metric._parameter_value == 'inp' %} Poor INP %
    {% elsif dynamic_metric._parameter_value == 'cls' %} Poor CLS %
    {% elsif dynamic_metric._parameter_value == 'dcl' %} Poor DCL %
    {% elsif dynamic_metric._parameter_value == 'fcp' %} Poor FCP %
    {% elsif dynamic_metric._parameter_value == 'fid' %} Poor FID %
    {% elsif dynamic_metric._parameter_value == 'fp' %} Poor FP %
    {% elsif dynamic_metric._parameter_value == 'ol' %} Poor Onload %
    {% elsif dynamic_metric._parameter_value == 'ttfb' %} Poor TTFB %
    {% else %} Poor %
    {% endif %}"

    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${avg_poor_lcp_pct}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${avg_poor_inp_pct}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${avg_poor_cls_pct}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${avg_poor_dcl_pct}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${avg_poor_fcp_pct}
      {% elsif dynamic_metric._parameter_value == "fid" %} ${avg_poor_fid_pct}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${avg_poor_fp_pct}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${avg_poor_ol_pct}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${avg_poor_ttfb_pct}
      {% else %} ${avg_poor_lcp_pct}
      {% endif %};;
  }

  measure: dynamic_p75_metric {
    type: number

    value_format_name: decimal_2
    hidden: no

    group_label: "Dynamic Core Metrics"

    description: "Displays the 75th percentile value for the Core Web Vitals metric selected by the user."

    # Dynamic label for P75 measures
    label: "{% if dynamic_metric._parameter_value == 'lcp' %} P75 LCP
    {% elsif dynamic_metric._parameter_value == 'inp' %} P75 INP
    {% elsif dynamic_metric._parameter_value == 'cls' %} P75 CLS
    {% elsif dynamic_metric._parameter_value == 'dcl' %} P75 DCL
    {% elsif dynamic_metric._parameter_value == 'fcp' %} P75 FCP
    {% elsif dynamic_metric._parameter_value == 'fid' %} P75 FID
    {% elsif dynamic_metric._parameter_value == 'fp' %} P75 FP
    {% elsif dynamic_metric._parameter_value == 'ol' %} P75 Onload
    {% elsif dynamic_metric._parameter_value == 'ttfb' %} P75 TTFB
    {% elsif dynamic_metric._parameter_value == 'rtt' %} P75 RTT
    {% else %} P75 Value
    {% endif %}"

    sql:
      {% if dynamic_metric._parameter_value == "lcp" %} ${avg_p75_lcp}
      {% elsif dynamic_metric._parameter_value == "inp" %} ${avg_p75_inp}
      {% elsif dynamic_metric._parameter_value == "cls" %} ${avg_p75_cls}
      {% elsif dynamic_metric._parameter_value == "dcl" %} ${avg_p75_dcl}
      {% elsif dynamic_metric._parameter_value == "fcp" %} ${avg_p75_fcp}
      {% elsif dynamic_metric._parameter_value == "fid" %} ${avg_p75_fid}
      {% elsif dynamic_metric._parameter_value == "fp" %} ${avg_p75_fp}
      {% elsif dynamic_metric._parameter_value == "ol" %} ${avg_p75_ol}
      {% elsif dynamic_metric._parameter_value == "ttfb" %} ${avg_p75_ttfb}
      {% elsif dynamic_metric._parameter_value == "rtt" %} ${avg_p75_rtt}
      {% else %} ${avg_p75_lcp}
      {% endif %};;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
    description: "Unique identifier for each row in the dataset."
  }

  dimension_group: date {
    type: time
    timeframes: [date, month, month_name, month_num, year, quarter]
    sql: ${TABLE}.date ;;
    hidden: no
    description: "The first day of the month for the data collection period."
  }

  dimension: 2GDensity {
    group_label: "Effective Connection Type"
    hidden: no
    description: "The proportion of experiences on 2G connections."
  }

  dimension: 3GDensity {
    group_label: "Effective Connection Type"
    hidden: no
    description: "The proportion of experiences on 3G connections."
  }

  dimension: 4GDensity {
    group_label: "Effective Connection Type"
    hidden: no
    description: "The proportion of experiences on 4G connections."
  }

  dimension: avg_dcl {
    group_label: "DOM Content Loaded"
    hidden: no
    description: "The percent of DOM Content Loaded experiences >= 1.5 seconds and < 2.5 seconds."
  }

  dimension: avg_fcp {
    group_label: "First Contentful Paint"
    hidden: no
    description: "The percent of First Contentful Paint experiences >= 1.8 seconds and < 3.0 seconds."
  }

  dimension: avg_fp {
    group_label: "First Paint"
    hidden: no
    description: "The percent of First Paint experiences >= 1 second and < 3 seconds."
  }

  dimension: avg_ol {
    group_label: "On Load"
    hidden: no
    description: "The percent of Onload experiences >= 2.5 seconds and < 6.5 seconds."
  }

  dimension: country_code {
    label: "Country Code"
    group_label: "Traffic Segments"
    hidden: no
    description: "The two-letter ISO 3166-1 alpha-2 country code where the user experience occurred."
  }

  dimension: device {
    label: "Device Type"
    group_label: "Traffic Segments"
    hidden: no
    description: "The form factor of user devices (e.g., phone, desktop, tablet)."
  }

  dimension: fast_dcl {
    group_label: "DOM Content Loaded"
    hidden: no
    description: "The percent of DOM Content Loaded experiences < 1.5 seconds."
  }

  dimension: fast_fcp {
    group_label: "First Contentful Paint"
    hidden: no
    description: "The percent of First Contentful Paint experiences < 1.8 seconds."
  }

  dimension: fast_fp {
    group_label: "First Paint"
    hidden: no
    description: "The percent of First Paint experiences < 1 second."
  }

  dimension: fast_ol {
    group_label: "On Load"
    hidden: no
    description: "The percent of Onload experiences < 2.5 seconds."
  }

  dimension: origin {
    group_label: "Traffic Segments"
    hidden: no
    description: "The URL of the site origin being measured."
    html:  <p style="font-size: 16px;"><a href="{{ country_summary.origin._value }}" target="_blank" style="text-decoration: none;">{{ country_summary.origin._value}}</a></p> ;;
  }

  dimension: p75_dcl {
    group_label: "DOM Content Loaded"
    hidden: no
    description: "The 75th percentile value of the DOM Content Loaded metric (in milliseconds)."
  }

  dimension: p75_fcp {
    group_label: "First Contentful Paint"
    hidden: no
    description: "The 75th percentile value of the First Contentful Paint metric (in milliseconds)."
  }

  dimension: p75_fp {
    group_label: "First Paint"
    hidden: no
    description: "The 75th percentile value of the First Paint metric (in milliseconds)."
  }

  dimension: p75_ol {
    group_label: "On Load"
    hidden: no
    description: "The 75th percentile value of the Onload metric (in milliseconds)."
  }

  dimension: phone_density {
    group_label: "Device Density"
    hidden: no
    description: "The proportion of experiences on phone devices."
  }

  dimension: rank {
    hidden: no
    description: "A coarse popularity ranking of the site's origin (as of March 2021)."
  }

  dimension: slow_dcl {
    group_label: "DOM Content Loaded"
    hidden: no
    description: "The percent of DOM Content Loaded experiences >= 2.5 seconds."
  }

  dimension: slow_fcp {
    group_label: "First Contentful Paint"
    hidden: no
    description: "The percent of First Contentful Paint experiences >= 3.0 seconds."
  }

  dimension: slow_fp {
    group_label: "First Paint"
    hidden: no
    description: "The percent of First Paint experiences >= 3 seconds."
  }

  dimension: slow_ol {
    group_label: "On Load"
    hidden: no
    description: "The percent of Onload experiences >= 6.5 seconds."
  }

  dimension: avg_fid {
    group_label: "First Input Delay"
    hidden: no
    description: "The percent of First Input Delay experiences >= 100 milliseconds and < 300 milliseconds."
  }

  dimension: avg_inp {
    group_label: "Interaction to Next Paint"
    hidden: no
    description: "The percent of Interaction to Next Paint experiences >= 200 milliseconds and < 500 milliseconds."
  }

  dimension: avg_lcp {
    group_label: "Largest Contentful Paint"
    hidden: no
    description: "The percent of Largest Contentful Paint experiences >= 2.5 seconds and < 4 seconds."
  }

  dimension: avg_ttfb {
    group_label: "Time to First Byte"
    hidden: no
    description: "The percent of Time to First Byte experiences >= 800 milliseconds and < 1800 milliseconds."
  }

  dimension: desktop_density {
    group_label: "Device Density"
    hidden: no
    description: "The proportion of experiences on desktop devices."
  }

  dimension: fast_fid {
    group_label: "First Input Delay"
    hidden: no
    description: "The percent of First Input Delay experiences < 100 milliseconds."
  }

  dimension: fast_inp {
    group_label: "Interaction to Next Paint"
    hidden: no
    description: "The percent of Interaction to Next Paint experiences < 200 milliseconds."
  }

  dimension: fast_lcp {
    group_label: "Largest Contentful Paint"
    hidden: no
    description: "The percent of Largest Contentful Paint experiences < 2.5 seconds."
  }

  dimension: fast_ttfb {
    group_label: "Time to First Byte"
    hidden: no
    description: "The percent of Time to First Byte experiences < 800 milliseconds."
  }

  dimension: high_rtt {
    group_label: "Round-Trip Time (RTT)"
    hidden: no
    description: "The proportion of traffic by high RTT thresholds."
  }

  dimension: large_cls {
    group_label: "Cumulative Layout Shift"
    hidden: no
    description: "The percent of Cumulative Layout Shift scores >= 0.25."
  }

  dimension: low_rtt {
    group_label: "Round-Trip Time (RTT)"
    hidden: no
    description: "The proportion of traffic by low RTT thresholds."
  }

  dimension: medium_cls {
    group_label: "Cumulative Layout Shift"
    hidden: no
    description: "The percent of Cumulative Layout Shift scores >= 0.1 and < 0.25."
  }

  dimension: medium_rtt {
    group_label: "Round-Trip Time (RTT)"
    hidden: no
    description: "The proportion of traffic by medium RTT thresholds."
  }

  dimension: navigation_types_back_forward {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences with a navigation type of back_forward."
  }

  dimension: navigation_types_back_forward_cache {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences with a navigation type of back_forward_cache."
  }

  dimension: navigation_types_navigate {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences with a standard navigation."
  }

  dimension: navigation_types_navigate_cache {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences from a standard navigation that utilized browser cache."
  }

  dimension: navigation_types_prerender {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences where the page was prerendered."
  }

  dimension: navigation_types_reload {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences initiated by a page reload."
  }

  dimension: navigation_types_restore {
    group_label: "Navigation Type"
    hidden: no
    description: "The proportion of experiences where the page was restored from a previous session."
  }

  dimension: notification_permission_accept {
    group_label: "Notification Permissions"
    hidden: no
    description: "Fraction of notification permission behaviors: accepted."
  }

  dimension: notification_permission_deny {
    group_label: "Notification Permissions"
    hidden: no
    description: "Fraction of notification permission behaviors: denied."
  }

  dimension: notification_permission_dismiss {
    group_label: "Notification Permissions"
    hidden: no
    description: "Fraction of notification permission behaviors: dismissed."
  }

  dimension: notification_permission_ignore {
    group_label: "Notification Permissions"
    hidden: no
    description: "Fraction of notification permission behaviors: ignored."
  }

  dimension: offline_density {
    group_label: "Effective Connection Type"
    hidden: no
    description: "The proportion of experiences on offline connections."
  }

  dimension: p75_cls {
    group_label: "Cumulative Layout Shift"
    hidden: no
    description: "The 75th percentile value of the Cumulative Layout Shift metric."
  }

  dimension: p75_fid {
    group_label: "First Input Delay"
    hidden: no
    description: "The 75th percentile value of the First Input Delay metric (in milliseconds)."
  }

  dimension: p75_inp {
    group_label: "Interaction to Next Paint"
    hidden: no
    description: "The 75th percentile value of the Interaction to Next Paint metric (in milliseconds)."
  }

  dimension: p75_lcp {
    group_label: "Largest Contentful Paint"
    hidden: no
    description: "The 75th percentile value of the Largest Contentful Paint metric (in milliseconds)."
  }

  dimension: p75_rtt {
    group_label: "Round-Trip Time (RTT)"
    hidden: no
    description: "The 75th percentile value of the Round-Trip Time (RTT) metric (in milliseconds)."
  }

  dimension: p75_ttfb {
    group_label: "Time to First Byte"
    hidden: no
    description: "The 75th percentile value of the Time to First Byte metric (in milliseconds)."
  }

  dimension: slow2_gdensity {
    group_label: "Effective Connection Type"
    hidden: no
    description: "The proportion of experiences on slow 2G connections."
  }

  dimension: slow_fid {
    group_label: "First Input Delay"
    hidden: no
    description: "The percent of First Input Delay experiences >= 300 milliseconds."
  }

  dimension: slow_inp {
    group_label: "Interaction to Next Paint"
    hidden: no
    description: "The percent of Interaction to Next Paint experiences >= 500 milliseconds."
  }

  dimension: slow_lcp {
    group_label: "Largest Contentful Paint"
    hidden: no
    description: "The percent of Largest Contentful Paint experiences >= 4 seconds."
  }

  dimension: slow_ttfb {
    group_label: "Time to First Byte"
    hidden: no
    description: "The percent of Time to First Byte experiences >= 1800 milliseconds."
  }

  dimension: small_cls {
    group_label: "Cumulative Layout Shift"
    hidden: no
    description: "The percent of Cumulative Layout Shift scores < 0.1."
  }

  dimension: tablet_density {
    group_label: "Device Density"
    hidden: no
    description: "The proportion of experiences on tablet devices."
  }

  #### MEASURES ####

  measure: count {
    type: count
    label: "Record Count"
    description: "The total number of rows/segments in the dataset."
    group_label: "Basic Counts"
    hidden: no
  }

  measure: avg_p75_lcp {
    type: median
    sql: ${p75_lcp} ;;
    value_format_name: decimal_1
    label: "Median P75 LCP"
    description: "The Median 75th percentile value for Largest Contentful Paint across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_inp {
    type: median
    sql: ${p75_inp} ;;
    value_format_name: decimal_1
    label: "Median P75 INP"
    description: "The Median 75th percentile value for Interaction to Next Paint across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_cls {
    type: median
    sql: ${p75_cls} ;;
    value_format_name: decimal_2
    label: "Median P75 CLS"
    description: "The Median 75th percentile value for Cumulative Layout Shift across selected segments."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_fcp {
    type: median
    sql: ${p75_fcp} ;;
    value_format_name: decimal_1
    label: "Median P75 FCP"
    description: "The Median 75th percentile value for First Contentful Paint across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_fid {
    type: median
    sql: ${p75_fid} ;;
    value_format_name: decimal_1
    label: "Median P75 FID"
    description: "The Median 75th percentile value for First Input Delay across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_fp {
    type: median
    sql: ${p75_fp} ;;
    value_format_name: decimal_1
    label: "Median P75 FP"
    description: "The Median 75th percentile value for First Paint across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_ttfb {
    type: median
    sql: ${p75_ttfb} ;;
    value_format_name: decimal_1
    label: "Median P75 TTFB"
    description: "The Median 75th percentile value for Time to First Byte across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_dcl {
    type: median
    sql: ${p75_dcl} ;;
    value_format_name: decimal_1
    label: "Median P75 DCL"
    description: "The Median 75th percentile value for DOM Content Loaded across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_ol {
    type: median
    sql: ${p75_ol} ;;
    value_format_name: decimal_1
    label: "Median P75 Onload"
    description: "The Median 75th percentile value for Onload across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_p75_rtt {
    type: median
    sql: ${p75_rtt} ;;
    value_format_name: decimal_1
    label: "Median P75 RTT"
    description: "The Median 75th percentile value for Round-Trip Time across selected segments (in milliseconds)."
    group_label: "Median Percentile Values"
    hidden: no
  }

  measure: avg_good_lcp_pct {
    type: sum
    sql: ${fast_lcp} ;;
    value_format_name: percent_2
    label: "Good LCP %"
    description: "The average proportion of user experiences with a Good Largest Contentful Paint (< 2.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_ni_lcp_pct {
    type: sum
    sql: ${avg_lcp} ;;
    value_format_name: percent_2
    label: "Needs Improvement LCP %"
    description: "The average proportion of user experiences with LCP that Needs Improvement (>= 2.5s and < 4s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_poor_lcp_pct {
    type: sum
    sql: ${slow_lcp} ;;
    value_format_name: percent_2
    label: "Poor LCP %"
    description: "The average proportion of user experiences with a Poor Largest Contentful Paint (>= 4s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_inp_pct {
    type: sum
    sql: ${fast_inp} ;;
    value_format_name: percent_2
    label: "Good INP %"
    description: "The average proportion of user experiences with a Good Interaction to Next Paint (< 200ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_ni_inp_pct {
    type: sum
    sql: ${avg_inp} ;;
    value_format_name: percent_2
    label: "Needs Improvement INP %"
    description: "The average proportion of user experiences with INP that Needs Improvement (>= 200ms and < 500ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_poor_inp_pct {
    type: sum
    sql: ${slow_inp} ;;
    value_format_name: percent_2
    label: "Poor INP %"
    description: "The average proportion of user experiences with a Poor Interaction to Next Paint (>= 500ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_cls_pct {
    type: sum
    sql: ${small_cls} ;;
    value_format_name: percent_2
    label: "Good CLS %"
    description: "The average proportion of user experiences with a Good Cumulative Layout Shift (< 0.1) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_ni_cls_pct {
    type: sum
    sql: ${medium_cls} ;;
    value_format_name: percent_2
    label: "Needs Improvement CLS %"
    description: "The average proportion of user experiences with CLS that Needs Improvement (>= 0.1 and < 0.25) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_poor_cls_pct {
    type: sum
    sql: ${large_cls} ;;
    value_format_name: percent_2
    label: "Poor CLS %"
    description: "The average proportion of user experiences with a Poor Cumulative Layout Shift (>= 0.25) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_fcp_pct {
    type: sum
    sql: ${fast_fcp} ;;
    value_format_name: percent_2
    label: "Good FCP %"
    description: "The average proportion of user experiences with a Good First Contentful Paint (< 1.8s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_fcp_pct {
    type: sum
    sql: ${avg_fcp} ;;
    value_format_name: percent_2
    label: "Needs Improvement FCP %"
    description: "The average proportion of user experiences with FCP that Needs Improvement (>= 1.8s and < 3.0s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_fcp_pct {
    type: sum
    sql: ${slow_fcp} ;;
    value_format_name: percent_2
    label: "Poor FCP %"
    description: "The average proportion of user experiences with a Poor First Contentful Paint (>= 3.0s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_fp_pct {
    type: sum
    sql: ${fast_fp} ;;
    value_format_name: percent_2
    label: "Good FP %"
    description: "The average proportion of user experiences with a Good First Paint (< 1s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_fp_pct {
    type: sum
    sql: ${avg_fp} ;;
    value_format_name: percent_2
    label: "Needs Improvement FP %"
    description: "The average proportion of user experiences with FP that Needs Improvement (>= 1s and < 3s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_fp_pct {
    type: sum
    sql: ${slow_fp} ;;
    value_format_name: percent_2
    label: "Poor FP %"
    description: "The average proportion of user experiences with a Poor First Paint (>= 3s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_fid_pct {
    type: sum
    sql: ${fast_fid} ;;
    value_format_name: percent_2
    label: "Good FID %"
    description: "The average proportion of user experiences with a Good First Input Delay (< 100ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_fid_pct {
    type: sum
    sql: ${avg_fid} ;;
    value_format_name: percent_2
    label: "Needs Improvement FID %"
    description: "The average proportion of user experiences with FID that Needs Improvement (>= 100ms and < 300ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_fid_pct {
    type: sum
    sql: ${slow_fid} ;;
    value_format_name: percent_2
    label: "Poor FID %"
    description: "The average proportion of user experiences with a Poor First Input Delay (>= 300ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_dcl_pct {
    type: sum
    sql: ${fast_dcl} ;;
    value_format_name: percent_2
    label: "Good DCL %"
    description: "The average proportion of user experiences with a Good DOM Content Loaded (< 1.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_dcl_pct {
    type: sum
    sql: ${avg_dcl} ;;
    value_format_name: percent_2
    label: "Needs Improvement DCL %"
    description: "The average proportion of user experiences with DCL that Needs Improvement (>= 1.5s and < 2.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_dcl_pct {
    type: sum
    sql: ${slow_dcl} ;;
    value_format_name: percent_2
    label: "Poor DCL %"
    description: "The average proportion of user experiences with a Poor DOM Content Loaded (>= 2.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_ol_pct {
    type: sum
    sql: ${fast_ol} ;;
    value_format_name: percent_2
    label: "Good Onload %"
    description: "The average proportion of user experiences with a Good Onload (< 2.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_ol_pct {
    type: sum
    sql: ${avg_ol} ;;
    value_format_name: percent_2
    label: "Needs Improvement Onload %"
    description: "The average proportion of user experiences with Onload that Needs Improvement (>= 2.5s and < 6.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_ol_pct {
    type: sum
    sql: ${slow_ol} ;;
    value_format_name: percent_2
    label: "Poor Onload %"
    description: "The average proportion of user experiences with a Poor Onload (>= 6.5s) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: avg_good_ttfb_pct {
    type: sum
    sql: ${fast_ttfb} ;;
    value_format_name: percent_2
    label: "Good TTFB %"
    description: "The average proportion of user experiences with a Good Time to First Byte (< 800ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_ni_ttfb_pct {
    type: sum
    sql: (1 - ${fast_ttfb} - ${slow_ttfb}) ;;
    value_format_name: percent_2
    label: "Needs Improvement TTFB %"
    description: "The average proportion of user experiences with TTFB that Needs Improvement (>= 800ms and < 1800ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }
  measure: avg_poor_ttfb_pct {
    type: sum
    sql: ${slow_ttfb} ;;
    value_format_name: percent_2
    label: "Poor TTFB %"
    description: "The average proportion of user experiences with a Poor Time to First Byte (>= 1800ms) across selected segments."
    group_label: "Performance Categories"
    hidden: no
  }

  measure: cw_vitals_segment_pass {
    type: number
    value_format_name: percent_0
    sql: |
      CASE
        WHEN ${p75_lcp} <= 2500
         AND ${p75_inp} <= 200
         AND ${p75_cls} <= 0.1
        THEN 1
        ELSE 0
      END
    ;;
    label: "CWV Segment Pass (0/1)"
    description: "Indicates if the specific segment (Origin, Country, Device, Month) meets all Core Web Vitals 'Good' thresholds (1 = Pass, 0 = Fail). Use for counting or filtering passing segments."
    group_label: "Core Web Vitals Status"
    hidden: no
  }

  measure: avg_combined_cwv_pass_rate {
    type: number
    value_format_name: percent_2
    sql: (
        AVG(${fast_lcp}) +
        AVG(${fast_inp}) +
        AVG(${small_cls})
      ) / 3
    ;;
    label: "Combined CWV Pass Rate"
    description: "The average combined 'Good' percentage across LCP, INP, and CLS for selected segments. Represents the average proportion of traffic meeting good thresholds for all three Core Web Vitals."
    group_label: "Core Web Vitals Summary"
    hidden: no
  }

  measure: total_2g_density {
    type: sum
    sql: ${2GDensity} ;;
    value_format_name: percent_2
    label: "Total 2G Traffic %"
    description: "The total proportion of traffic on 2G connections across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_3g_density {
    type: sum
    sql: ${3GDensity} ;;
    value_format_name: percent_2
    label: "Total 3G Traffic %"
    description: "The total proportion of traffic on 3G connections across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_4g_density {
    type: sum
    sql: ${4GDensity} ;;
    value_format_name: percent_2
    label: "Total 4G Traffic %"
    description: "The total proportion of traffic on 4G connections across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_slow2g_density {
    type: sum
    sql: ${slow2_gdensity} ;;
    value_format_name: percent_2
    label: "Total Slow 2G Traffic %"
    description: "The total proportion of traffic on slow 2G connections across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_offline_density {
    type: sum
    sql: ${offline_density} ;;
    value_format_name: percent_2
    label: "Total Offline Traffic %"
    description: "The total proportion of traffic on offline connections across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }

  measure: total_desktop_traffic_proportion {
    type: sum
    sql: ${desktop_density} ;;
    value_format_name: percent_2
    label: "Total Desktop Traffic %"
    description: "The total proportion of traffic coming from desktop devices across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_phone_traffic_proportion {
    type: sum
    sql: ${phone_density} ;;
    value_format_name: percent_2
    label: "Total Phone Traffic %"
    description: "The total proportion of traffic coming from phone devices across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_tablet_traffic_proportion {
    type: sum
    sql: ${tablet_density} ;;
    value_format_name: percent_2
    label: "Total Tablet Traffic %"
    description: "The total proportion of traffic coming from tablet devices across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }

  measure: total_low_rtt_traffic_proportion {
    type: sum
    sql: ${low_rtt} ;;
    value_format_name: percent_2
    label: "Total Low RTT Traffic %"
    description: "The total proportion of traffic with low Round-Trip Time across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_medium_rtt_traffic_proportion {
    type: sum
    sql: ${medium_rtt} ;;
    value_format_name: percent_2
    label: "Total Medium RTT Traffic %"
    description: "The total proportion of traffic with medium Round-Trip Time across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }
  measure: total_high_rtt_traffic_proportion {
    type: sum
    sql: ${high_rtt} ;;
    value_format_name: percent_2
    label: "Total High RTT Traffic %"
    description: "The total proportion of traffic with high Round-Trip Time across selected segments."
    group_label: "Traffic Proportions"
    hidden: no
  }

  measure: total_back_forward_nav_proportion {
    type: sum
    sql: ${navigation_types_back_forward} ;;
    value_format_name: percent_2
    label: "Total Back/Forward Nav %"
    description: "The total proportion of traffic from back/forward browser navigation."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_back_forward_cache_nav_proportion {
    type: sum
    sql: ${navigation_types_back_forward_cache} ;;
    value_format_name: percent_2
    label: "Total Back/Forward Cache Nav %"
    description: "The total proportion of traffic from back/forward cache navigation (instant)."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_navigate_nav_proportion {
    type: sum
    sql: ${navigation_types_navigate} ;;
    value_format_name: percent_2
    label: "Total Standard Nav %"
    description: "The total proportion of traffic from standard page navigations."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_navigate_cache_nav_proportion {
    type: sum
    sql: ${navigation_types_navigate_cache} ;;
    value_format_name: percent_2
    label: "Total Cached Standard Nav %"
    description: "The total proportion of traffic from standard navigations utilizing browser cache."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_prerender_nav_proportion {
    type: sum
    sql: ${navigation_types_prerender} ;;
    value_format_name: percent_2
    label: "Total Prerender Nav %"
    description: "The total proportion of traffic from prerendered pages."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_reload_nav_proportion {
    type: sum
    sql: ${navigation_types_reload} ;;
    value_format_name: percent_2
    label: "Total Reload Nav %"
    description: "The total proportion of traffic from page reloads."
    group_label: "Navigation Type Proportions"
    hidden: no
  }
  measure: total_restore_nav_proportion {
    type: sum
    sql: ${navigation_types_restore} ;;
    value_format_name: percent_2
    label: "Total Restore Nav %"
    description: "The total proportion of traffic from page restores."
    group_label: "Navigation Type Proportions"
    hidden: no
  }

  measure: total_notification_accept_proportion {
    type: sum
    sql: ${notification_permission_accept} ;;
    value_format_name: percent_2
    label: "Total Notif. Accepted %"
    description: "The total proportion of users who accepted notification permissions."
    group_label: "Notification Permissions"
    hidden: no
  }
  measure: total_notification_deny_proportion {
    type: sum
    sql: ${notification_permission_deny} ;;
    value_format_name: percent_2
    label: "Total Notif. Denied %"
    description: "The total proportion of users who denied notification permissions."
    group_label: "Notification Permissions"
    hidden: no
  }
  measure: total_notification_dismiss_proportion {
    type: sum
    sql: ${notification_permission_dismiss} ;;
    value_format_name: percent_2
    label: "Total Notif. Dismissed %"
    description: "The total proportion of users who dismissed notification permissions."
    group_label: "Notification Permissions"
    hidden: no
  }
  measure: total_notification_ignore_proportion {
    type: sum
    sql: ${notification_permission_ignore} ;;
    value_format_name: percent_2
    label: "Total Notif. Ignored %"
    description: "The total proportion of users who ignored notification permissions."
    group_label: "Notification Permissions"
    hidden: no
  }

}
