include: "/views/refined/**/*.view.lkml"

explore: device_summary {
  always_filter: {
    filters: [device_summary.origin: "", device_summary.device: ""]
  }
  sql_always_where:
    ${origin} IS NOT NULL  AND
    ${origin} LIKE 'https://%' AND
    ${date_month} >= '2023-01-01';;
}
