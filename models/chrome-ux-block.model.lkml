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
  always_filter: {
    filters: [metrics_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${origin} IS NOT NULL  AND
                    ${origin} LIKE 'https://%';;
}

explore: country_query {
  hidden: yes
}

explore: device_summary {
  always_filter: {
    filters: [device_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${origin} IS NOT NULL  AND
    ${origin} LIKE 'https://%';;
}

explore: origin_summary {}

explore: country_summary {
  always_filter: {
    filters: [country_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${device} IS NOT NULL  AND
                    ${origin} IS NOT NULL  AND
                    ${origin} LIKE 'https://%';;
}

explore: origin_query {
  hidden: yes
}
