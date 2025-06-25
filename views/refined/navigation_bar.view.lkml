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
    <div style="border-radius: 5px; padding: 10px; background: #3a71fc; height: auto;">
      <nav style="font-size: 16px; display: flex; flex-wrap: wrap; align-items: center; justify-content: flex-start;">

        <a style="background-color: #efefef; color: #3a71fc; padding: 4px 12px; margin: 5px; font-weight: bold; border-radius: 20px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month=2025-04&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="color: #efefef; padding: 4px 10px; margin: 5px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>

      </nav>
      </div>
      ;;
  }

  dimension: single_navigation_bar_grouped_2 {
    type: string
    sql: "";;
    hidden: no
    group_label: "Navigation Bar"
    html:
    <div style="border-radius: 5px; padding: 10px; background: #3a71fc; height: auto; color: red; text-align: center; border-radius: 20px;">

      <nav style="font-size: 16px; margin-bottom: 8px;">
        <a style="background-color: #efefef; color: #3a71fc; padding: 4px 12px; font-weight: bold; border-radius: 20px; text-decoration: none; margin-right: 8px;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month=2025-04&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
      </nav>

      <nav style="font-size: 16px;">
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a style="color: #efefef; padding: 4px 10px; line-height: 40px; text-decoration: none;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
      </nav>

      </div>
      ;;
  }

  dimension: single_navigation_bar_grouped_vertical {
    type: string
    sql: "";;
    hidden: no
    group_label: "Navigation Bar (Vertical)"
    html:
    <div style="
        border-radius: 8px;
        background: #3a71fc;
        width: 280px;
        color: white;
        font-family: Arial, sans-serif;
        overflow: hidden;
        padding-bottom: 10px;">

      <a style="
      display: block;
      background-color: #efefef;
      color: #3a71fc;
      padding: 10px 15px;
      margin: 10px;
      font-weight: bold;
      border-radius: 6px;
      text-decoration: none;
      font-size: 16px;
      text-align: center;"
      href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
      ☰ Core Web Vitals
      </a>

      <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>

      <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>

      <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>

      </div>
      ;;
  }


  ############# Vertical NAvBArs #####

# --- Definiciones de la Barra de Navegación ---
# Cada dimensión representa la barra de navegación con un dashboard diferente resaltado.

  dimension: nav_bar_active_core_web_vitals {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; background-color: #efefef; color: #3a71fc; padding: 20px 15px; margin: 10px; font-weight: bold; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>

        <div style="background-color: #08B248; padding: 10px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>

        <div style="background-color: #FC9200; margin-top: 10px; padding: 10px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>

      <div style="background-color: #FC2E31; margin-top: 10px; padding: 10px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
      <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
      <a style="display: block; color: #efefef; padding: 18px 15px 18px 25px; margin-bottom: 7px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
      </div> ;;
  }


  dimension: nav_bar_active_lcp {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_inp {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;"
           href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">
           ☰ Core Web Vitals
        </a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_cls {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_fcp {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_ttfb {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_fp {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_dcl {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_ol {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_device_distribution {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_navigation_type_distribution {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_connection_distribution {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

  dimension: nav_bar_active_notification_permissions {
    hidden: no
    group_label: "vertical"
    type: string
    sql: "" ;;
    html:
    <div style="border-radius: 8px; background: #3a71fc; width: 280px; color: white; font-family: Arial, sans-serif; overflow: hidden; padding-bottom: 10px;">
        <a style="display: block; border: 1px solid #efefef; color: #efefef; padding: 10px 15px; margin: 10px; font-weight: normal; border-radius: 6px; text-decoration: none; font-size: 16px; text-align: center;" href="/embed/dashboards/chrome-ux-block::core_web_vitals?Date+Month={{ 'now' | date: '%Y-%m' }}&Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">☰ Core Web Vitals</a>
        <div style="background-color: #08B248; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Primary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::largest_contentful_paint_lcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Largest Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::interaction_to_next_paint_inp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Interaction to Next Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::cumulative_layout_shift_cls?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Cumulative Layout Shift</a>
        <div style="background-color: #FC9200; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Secondary Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_contentful_paint_fcp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Contentful Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::time_to_first_byte_ttfb?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Time to First Byte</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::first_paint_fp?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">First Paint</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::dom_content_loaded_dcl?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">DOM Content Loaded</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px;" href="/embed/dashboards/chrome-ux-block::onload_ol?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Onload</a>
        <div style="background-color: #FC2E31; margin-top: 10px; padding: 6px 15px; font-size: 12px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Distribution Metrics</div>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::device_distribution?Origin={{ _filters['origin'] | url_encode }}">Device Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::navigation_type_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Navigation Type Distribution</a>
        <a style="display: block; color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; border-bottom: 1px solid #4a81fc;" href="/embed/dashboards/chrome-ux-block::connection_distribution?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Connection Distribution</a>
        <a style="display: block; color: #3a71fc; background-color: #efefef; padding: 9px 15px 9px 25px; text-decoration: none; font-size: 15px; font-weight: bold; margin: 2px 10px; border-radius: 6px;" href="/embed/dashboards/chrome-ux-block::notification_permissions?Origin={{ _filters['origin'] | url_encode }}&Device+Type={{ _filters['device'] | url_encode }}">Notification Permissions</a>
    </div> ;;
  }

}
