include: "../raw/**.view.lkml"
view: +country_summary {

  derived_table: {
    sql:SELECT
                *,
                GENERATE_UUID() as primary_key,
                PARSE_TIMESTAMP('%Y%m%d', CAST(yyyymm AS STRING) || '01') AS date

        FROM `chrome-ux-report.materialized.country_summary` ;;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  dimension_group: date {
    type: time
    timeframes: [date, month, month_name, month_num, year, quarter]
    sql: ${TABLE}.date ;;
    hidden: no
  }

  dimension: 2GDensity {
    hidden: no
  }

  dimension: 3GDdensity {
    hidden: no
  }

  dimension: 4GDdensity {
    hidden: no
  }

  dimension: avg_dcl {
    hidden: no
  }

  dimension: avg_fcp {
    hidden: no
  }

  dimension: avg_fp {
    hidden: no
  }

  dimension: avg_ol {
    hidden: no
  }

  dimension: country_code {
    hidden: no
  }

  dimension: device {
    hidden: no
  }
  dimension: fast_dcl {
    hidden: no
  }
  dimension: fast_fcp {
    hidden: no
  }

  dimension: fast_fp {
    hidden: no
  }

  dimension: fast_ol {
    hidden: no
  }

  dimension: origin {
    hidden: no
  }

  dimension: p75_dcl {
    hidden: no
  }
  dimension: p75_fcp {
    hidden: no
  }

  dimension: p75_fp {
    hidden: no
  }

  dimension: p75_ol {
    hidden: no
  }

  dimension: phone_density {
    hidden: no
  }

  dimension: rank {
    hidden: no
  }

  dimension: slow_dcl {
    hidden: no
  }

  dimension: slow_fcp {
    hidden: no
  }

  dimension: slow_fp {
    hidden: no
  }

  dimension: slow_ol {
    hidden: no
  }

}
