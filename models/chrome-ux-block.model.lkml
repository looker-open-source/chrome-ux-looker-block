connection: "@{CONNECTION_NAME}"

# include all the explores & Dashboards

include: "/explores/*.explore.lkml"
include: "/dashboards/*.dashboard"

datagroup: chrome_ux_block_default_datagroup {
  max_cache_age: "24 hour"
}

persist_with: chrome_ux_block_default_datagroup

explore: navigation_bar {
  hidden: yes
  persist_for: "0 seconds"
}

explore: normalized {
  hidden: yes
}

explore: country_normalized {}
