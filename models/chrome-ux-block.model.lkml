connection: "bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: chrome_ux_block_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chrome_ux_block_default_datagroup

explore: metrics_query {
  hidden: yes
}

explore: device_query {
  hidden: yes
}

explore: metrics_summary {
  hidden: yes
}

explore: country_query {
  hidden: yes
}

explore: device_summary {
  hidden: yes
}

explore: origin_summary {}

explore: country_summary {}

explore: origin_query {
  hidden: yes
}
