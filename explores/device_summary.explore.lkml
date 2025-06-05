include: "/views/refined/**/*.view.lkml"

explore: device_summary {
  always_filter: {
    filters: [device_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${origin} IS NOT NULL  AND
    ${origin} LIKE 'https://%' AND
    ${date_date} >= '2024-01-01';;
}
