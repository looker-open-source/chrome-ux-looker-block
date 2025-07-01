project_name: "chrome-ux-block"

constant: CONNECTION_NAME {
  value: "bq"
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


constant: NAV_STYLE_ACTIVE_MAIN {
  value: "display: block; background-color: #efefef; color: #3a71fc; padding: 10px 18px; margin: 12px; font-weight: bold; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
  export: override_optional
}

constant: NAV_STYLE_INACTIVE_MAIN {
  value: "display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
  export: override_optional
}

constant: NAV_STYLE_ACTIVE_LINK {
  value: "display: block; color: #3a71fc; background-color: #efefef; padding: 9px 18px 9px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;"
  export: override_optional
}

constant: NAV_STYLE_INACTIVE_LINK {
  value: "display: block; color: #efefef; padding: 9px 18px 9px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;"
  export: override_optional
}

constant: NAV_STYLE_INACTIVE_LINK_NO_BORDER {
  value: "display: block; color: #efefef; padding: 9px 18px 9px 30px; text-decoration: none; font-size: 17px;"
  export: override_optional
}
