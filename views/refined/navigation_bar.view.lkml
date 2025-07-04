include: "/views/refined/device_summary.view.lkml"

view: navigation_bar {
  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT
              {{ _filters['origin'] | sql_quote }} as origin,
              {{ _filters['device'] | sql_quote }} as device;;

  }

  dimension: device {
    hidden: no
    sql: ${TABLE}.device ;;
  }

  dimension: origin {
    hidden: no
    sql: ${TABLE}.origin ;;
  }

  ###############

  dimension: vertical_navigation_bar_dynamic {
    hidden: no
    group_label: "Vertical Navigation"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="{% if _explore._dashboard_url contains '::core_web_vitals' %}@{NAV_STYLE_ACTIVE_MAIN}{% else %}@{NAV_STYLE_INACTIVE_MAIN}{% endif %}"
          href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
          ☰ Core Web Vitals
        </a>

        <div style="background-color: #08B248; padding: 7px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="{% if _explore._dashboard_url contains '::largest_contentful_paint_lcp' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="{% if _explore._dashboard_url contains '::interaction_to_next_paint_inp' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="{% if _explore._dashboard_url contains '::cumulative_layout_shift_cls' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK_NO_BORDER}{% endif %}" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>

        <div style="background-color: #FC9200; margin-top: 12px; padding: 7px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="{% if _explore._dashboard_url contains '::first_contentful_paint_fcp' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="{% if _explore._dashboard_url contains '::time_to_first_byte_ttfb' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="{% if _explore._dashboard_url contains '::first_paint_fp' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="{% if _explore._dashboard_url contains '::dom_content_loaded_dcl' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="{% if _explore._dashboard_url contains '::onload_ol' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK_NO_BORDER}{% endif %}" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>

      <div style="background-color: #FC2E31; margin-top: 12px; padding: 7px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
      <a style="{% if _explore._dashboard_url contains '::device_distribution' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a style={% if _explore._dashboard_url contains '::navigation_type_distribution' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %} href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
      <a style="{% if _explore._dashboard_url contains '::connection_distribution' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK}{% endif %}" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a style="{% if _explore._dashboard_url contains '::notification_permissions' %}@{NAV_STYLE_ACTIVE_LINK}{% else %}@{NAV_STYLE_INACTIVE_LINK_NO_BORDER}{% endif %}" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
      </div> ;;
  }
}
