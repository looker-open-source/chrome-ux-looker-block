project_name: "chrome-ux-block"

constant: CONNECTION_NAME {
  value: "default_bigquery_connection"
  export: override_required
}

constant: CRUX_PUBLIC_PROJECT_ID {
  value: "chrome-ux-report"
  export: override_optional
}

constant: CRUX_DATASET {
  value: "materialized"
  export: override_optional
}

new_lookml_runtime: yes


constant: NAV_H2_MAIN_INACTIVE {
  value: "display: inline-block; background-color: #f5f5f5; color: #555; padding: 8px 16px; font-weight: normal; border-radius: 20px; text-decoration: none; font-size: 16px;"
  export: override_optional
}

constant: NAV_H2_GREEN_ACTIVE {
  value: "display: inline-block; background-color: #e8f5e9; color: #0d652d; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;"
  export: override_optional
}

constant: NAV_H2_YELLOW_ACTIVE {
  value: "display: inline-block; background-color: #fff4e5; color: #b96a00; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;"
  export: override_optional
}

constant: NAV_H2_LINK_INACTIVE {
  value: "display: inline-block; color: #555; padding: 8px 16px; text-decoration: none; font-size: 16px; border-radius: 20px;"
  export: override_optional
}
