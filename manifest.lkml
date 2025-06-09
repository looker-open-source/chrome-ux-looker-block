project_name: "chrome-ux-block"

constant: CONNECTION_NAME {
  value: "bq-looker-marketplace"
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
