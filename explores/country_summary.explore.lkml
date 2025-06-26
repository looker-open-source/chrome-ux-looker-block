include: "/views/refined/**/*.view.lkml"

explore: country_summary {
  hidden: yes
  always_filter: {
    filters: [country_summary.origin: "-EMPTY"]
  }
  sql_always_where: ${device} IS NOT NULL  AND
                    ${origin} IS NOT NULL  AND
                    ${origin} LIKE 'https://%';;
}
