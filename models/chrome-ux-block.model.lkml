connection: "bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: chrome_ux_block_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chrome_ux_block_default_datagroup

explore: metrics_query {}

explore: device_query {}

explore: metrics_summary {}

explore: country_query {}

explore: device_summary {}

explore: origin_summary {}

explore: country_summary {}

explore: origin_query {}

