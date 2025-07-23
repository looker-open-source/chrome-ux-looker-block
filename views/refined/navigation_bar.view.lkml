# include: "/views/refined/device_summary.view.lkml"

view: navigation_bar {
  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT
              {{ _filters['origin_filter'] | sql_quote }} as origin,
              {{ _filters['device_filter'] | sql_quote }} as device;;

  }

  dimension: device_filter {
    hidden: no
    sql: ${TABLE}.device ;;
  }

  dimension: origin_filter {
    hidden: no
    sql: ${TABLE}.origin ;;
  }

  dimension: horizontal_navigation_bar_dynamic {
    hidden: no
    group_label: "Horizontal Navigation"
    type: string
    sql: "" ;;
    html:
    <div style="background: #ffffff; font-family: Arial, sans-serif; border-bottom: 1px solid #e0e0e0; padding: 10px; display: flex; align-items: center; justify-content: flex-start; gap: 10px;">

            {%- assign style_inactive = "display: inline-block; color: #555; padding: 8px 16px; text-decoration: none; font-size: 16px; border-radius: 20px;" -%}
            {%- assign style_active_green = "display: inline-block; background-color: #e8f5e9; color: #0d652d; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;" -%}
            {%- assign style_active_yellow = "display: inline-block; background-color: #fff4e5; color: #b96a00; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;" -%}


      {% if _explore._dashboard_url contains '::summary' %}
      <span style="{{ style_active_green }}">☰ Summary </span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/chrome-ux-block::summary?Origin={{ _filters['origin_filter'] | url_encode }}&Device={{ _filters['device_filter'] | url_encode }}">☰ Summary</a>
      {% endif %}


      {% if _explore._dashboard_url contains '::metrics' %}
      <span style="{{ style_active_green }}">Metrics</span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/chrome-ux-block::metrics?Origin={{ _filters['origin_filter'] | url_encode }}&Device={{ _filters['device_filter'] | url_encode }}">Metrics</a>
      {% endif %}


      {% if _explore._dashboard_url contains '::distribution' %}
      <span style="{{ style_active_yellow }}">Distributions</span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/chrome-ux-block::distribution?Origin={{ _filters['origin_filter'] | url_encode }}&Device={{ _filters['device_filter'] | url_encode }}">Distributions</a>
      {% endif %}

      </div> ;;
  }
}
