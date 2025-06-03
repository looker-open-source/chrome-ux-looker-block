connection: "bq-looker-marketplace"

# include all the explores & Dashboards

include: "/explores/*.explore.lkml"
include: "/dashboards/*.dashboard"

datagroup: chrome_ux_block_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chrome_ux_block_default_datagroup
