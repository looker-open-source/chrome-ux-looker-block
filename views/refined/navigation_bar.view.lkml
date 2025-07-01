include: "/views/refined/device_summary.view.lkml"

view: navigation_bar {
  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT origin, device, date FROM `@{CRUX_PUBLIC_PROJECT_ID}.@{CRUX_DATASET}.device_summary` ;;
  }

  dimension: device {
    hidden: no
    sql: ${TABLE}.device ;;
  }

  dimension: origin {
    hidden: no
    sql: ${TABLE}.origin ;;
  }

  dimension_group: date {
    type: time
    timeframes: [date]
    sql: ${TABLE}.date ;;
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
          href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ '1 months ago' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
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

  ############# Vertical NAvBArs #####

  dimension: nav_bar_active_core_web_vitals {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 320px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; background-color: #efefef; color: #3a71fc; padding: 20px 20px; margin: 10px; font-weight: bold; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>

      <div style="background-color: #08B248; padding: 10px 20px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>

      <div style="background-color: #FC9200; margin-top: 10px; padding: 10px 20px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>

      <div style="background-color: #FC2E31; margin-top: 10px; padding: 10px 20px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 20px 18px 30px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
      </div> ;;
  }


 dimension: nav_bar_active_lcp {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_inp {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_cls {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_fcp {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_ttfb {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_fp {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_dcl {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_ol {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_device_distribution {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_navigation_type_distribution {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_connection_distribution {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}

dimension: nav_bar_active_notification_permissions {
  hidden: yes
  group_label: "vertical"
  type: string
  sql: "" ;;
  html:
    <div style="border-radius: 8px; background: #3a71fc; width: 340px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 12px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 12px 18px; margin: 12px; font-weight: normal; border-radius: 8px; text-decoration: none; font-size: 18px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 12px; padding: 8px 18px; font-size: 14px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 11px 18px 11px 30px; text-decoration: none; font-size: 17px; font-weight: bold; margin: 2px 12px; border-radius: 8px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
}
  dimension: test {
    type: string
    hidden: no
    sql: "" ;;
    html:
    <div style="background-color:#fffbef; border:2px solid #fce7a8; padding:15px; margin: 10px; font-family:monospace; color: #333; border-radius: 5px;">
        <h4 style="margin:0 0 10px 0; padding-bottom:5px; border-bottom:1px solid #eee;"></h4>
        <p style="margin: 5px 0;">
            <b>_explore._dashboard_url:</b>
            <br>
            <span style="color:#c7254e;">{{ _explore._dashboard_url }}</span>
        </p>
        <p style="margin: 5px 0;">
            <b>_explore._name:</b>
            <br>
            <span style="color:#c7254e;">{{ _explore._name }}</span>
        </p>
    </div> ;;
  }

  dimension: test_contains_logic {
    type: string
    hidden: no
    sql: "" ;;
    html:
    <div style="background-color:#f0f4f8; border:2px solid #c9d7e3; padding:15px; margin: 10px; font-family:monospace; color: #333; border-radius: 5px;">
        <h4 style="margin:0 0 10px 0; padding-bottom:5px; border-bottom:1px solid #ddd;"></h4>

        <p style="margin: 10px 0;">
            <b>1. URL to verify:</b>
            <br>
            <span style="color:#555; word-wrap:break-word;">{{ _explore._dashboard_url }}</span>
        </p>

      <p style="margin: 10px 0;">
      <b>2. Condition:</b> The Avobe URL contains "::cumulative_layout_shift_cls"
      </p>

      <p style="margin: 15px 0 5px 0;">
      <b>3. Result:</b>
      <br>
      <span style="font-weight:bold; font-size: 18px; color: {% if _explore._dashboard_url contains '::cumulative_layout_shift_cls' %}#08B248{% else %}#FC2E31{% endif %};">
      {% if _explore._dashboard_url contains '::cumulative_layout_shift_cls' %}
      TRUE
      {% else %}
      FALSE
      {% endif %}
      </span>
      </p>
      </div> ;;
  }



}
