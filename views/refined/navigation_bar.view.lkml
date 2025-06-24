view: navigation_bar {
  extension: required

  ############ NAVIGATION ########
  dimension: crux_vis_tool {
    type: string
    html:  <p style="font-size: 16px;">👉 Try <a href="https://cruxvis.withgoogle.com/#/?view=cwvsummary&url={{ device_summary.origin._value | url_encode }}" target="_blank" style="text-decoration: none;">CrUX Vis</a> to visualize the Core Web Vitals from CrUX as time series!</p> ;;
    sql: ${TABLE}.navigation ;;
  }

  dimension: nav_bar_core_web_vitals {
    type: string
    sql: "";;
    hidden: no
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #3a71fc; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="background-color: #efefef; color: #3a71fc; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month=2025-04&Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Largest Contentful Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Interaction to Next Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Cumulative Layout Shift </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_lcp{
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #3a71fc; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="background-color: #efefef; color: #3a71fc; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Largest Contentful Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Interaction to Next Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Cumulative Layout Shift </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_inp {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #3a71fc; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Largest Contentful Paint </a>
          <a style="background-color: #efefef; color: #3a71fc; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Interaction to Next Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Cumulative Layout Shift </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_cls {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #3a71fc; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Largest Contentful Paint </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Interaction to Next Paint </a>
          <a style="background-color: #efefef; color: #3a71fc; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Cumulative Layout Shift </a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More</a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_fcp {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #FC9200; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
            <a style="background-color: #efefef; color: #FC9200; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Contentful Paint</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Time to First Byte</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Paint</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">DOM Content Loaded</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Onload</a>
            <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
          </nav>
        </div>
        ;;
  }

  dimension: nav_bar_ttfb {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #FC9200; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Contentful Paint</a>
          <a style="background-color: #efefef; color: #FC9200; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Time to First Byte</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">DOM Content Loaded</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Onload</a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_fp {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #FC9200; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Contentful Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Time to First Byte</a>
          <a style="background-color: #efefef; color: #FC9200; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">DOM Content Loaded</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Onload</a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_dcl {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #FC9200; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Contentful Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Time to First Byte</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Paint</a>
          <a style="background-color: #efefef; color: #FC9200; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">DOM Content Loaded</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Onload</a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_ol {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
      <div style="border-radius: 5px; padding: 5px 10px; background: #FC9200; height: 60px; color: red; text-align: center;">
        <nav style="font-size: 18px;  text-align: center;">
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Contentful Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Time to First Byte</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">First Paint</a>
          <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">DOM Content Loaded</a>
          <a style="background-color: #efefef; color: #FC9200; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Onload</a>
          <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Distribution </a>
        </nav>
      </div>
      ;;
  }

  dimension: nav_bar_device_distribution {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
            <a style="background-color: #efefef; color: #08B248; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Device Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Navigation Type Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Connection Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Notification Permissions</a>
            <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More</a>
          </nav>
        </div>
        ;;
  }

  dimension: nav_bar_navigation_type_distrbution {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Device Distribution</a>
            <a style="background-color: #efefef; color: #08B248; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Navigation Type Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Connection Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Notification Permissions</a>
            <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More</a>
          </nav>
        </div>
        ;;
  }

  dimension: nav_bar_connection_distribution {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Device Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Navigation Type Distribution</a>
            <a style="background-color: #efefef; color: #08B248; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Connection Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Notification Permissions</a>
            <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More</a>
          </nav>
        </div>
        ;;
  }

  dimension: nav_bar_notification_permissions {
    type: string
    sql: "";;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">☰ Core Web Vitals </a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters["origin"] | url_encode }}">Device Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Navigation Type Distribution</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Connection Distribution</a>
            <a style="background-color: #efefef; color: #08B248; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold; border-radius: 20px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">Notification Permissions</a>
            <a style="color: #efefef; padding: 5px 15px; float: right; line-height: 40px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters["origin"] | url_encode }}&Device+Type={{ _filters["device"] | url_encode }}">More</a>
          </nav>
        </div>
        ;;
  }

  dimension: single_navigation_bar_grouped {
    type: string
    sql: "";;
    hidden: no
    group_label: "Navigation Bar"
    html:
      <style>
        /* Main Navigation Bar Container */
        .grouped-nav-bar {
          padding: 15px;
          background: #3a71fc;
          font-family: 'Google Sans', 'Helvetica', 'Arial', sans-serif;
          /* Flexbox used for layout */
          display: flex;
          justify-content: space-around; /* Distributes groups evenly */
          align-items: flex-start; /* Aligns groups to the top */
        }

      /* Styling for each group of links */
      .nav-group {
      text-align: left;
      }

      /* Styling for the title of each group */
      .nav-group-title {
      font-size: 14px;
      color: #b9d2ff; /* A lighter blue to act as a label */
      font-weight: bold;
      text-transform: uppercase;
      border-bottom: 1px solid #b9d2ff;
      padding-bottom: 8px;
      margin-bottom: 8px;
      }

      /* Styling for individual links within a group */
      .nav-group a {
      display: block; /* Makes each link take its own line */
      color: #efefef;
      text-decoration: none;
      padding: 8px 12px;
      margin: 2px 0;
      border-radius: 20px; /* Rounded shape for the pill */
      font-size: 16px;
      }

      /* Hover effect for non-active links */
      .nav-group a:hover {
      background-color: rgba(255, 255, 255, 0.1);
      }

      /* --- Active Link Highlight (Pill Style) --- */
      /* Apply this class to the link of the currently viewed dashboard */
      .nav-group a.active {
      background-color: #efefef !important;
      color: #3a71fc;
      font-weight: bold;
      }
      </style>

      <div class="grouped-nav-bar">

      <div class="nav-group">
      <div class="nav-group-title">Core Vitals</div>
      <a href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month=2025-04&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
      <a href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
      <a href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
      <a href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
      </div>

      <div class="nav-group">
      <div class="nav-group-title">Other Metrics</div>
      <a href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
      <a href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
      <a href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
      <a href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
      <a href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
      </div>

      <div class="nav-group">
      <div class="nav-group-title">Audience Analysis</div>
      <a href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type</a>
      <a href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
      </div>

      </div>
      ;;
  }

}
