include: "/views/refined/**/*.view.lkml"



explore: metrics_summary {
  hidden: yes
  always_filter: {
    filters: [metrics_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${origin} IS NOT NULL  AND
    ${origin} LIKE 'https://%';;
}
