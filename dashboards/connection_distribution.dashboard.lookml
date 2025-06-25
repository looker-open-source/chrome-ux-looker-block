---
- dashboard: connection_distribution
  title: 'Connection Distribution '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kopI9FRQEaqLlEYX6xEeKv
  elements:
  - title: By Month
    name: By Month
    model: chrome-ux-block
    explore: device_summary
    type: looker_bar
    fields: [device_summary.date_month, device_summary.date_month_name, device_summary.date_year,
      device_summary.total_4g_density, device_summary.total_3g_density, device_summary.total_2g_density,
      device_summary.total_slow2g_density, device_summary.total_offline_density]
    sorts: [device_summary.date_month desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.desktop_density
      expression: ''
      label: Sum of Desktop Density
      measure: sum_of_desktop_density
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.phone_density
      expression: ''
      label: Sum of Phone Density
      measure: sum_of_phone_density
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.tablet_density
      expression: ''
      label: Sum of Tablet Density
      measure: sum_of_tablet_density
      type: sum
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: device_summary.avg_good_lcp_pct,
            id: device_summary.avg_good_lcp_pct, name: Avg Good LCP %}, {axisId: device_summary.avg_ni_lcp_pct,
            id: device_summary.avg_ni_lcp_pct, name: Avg Needs Improvement LCP %},
          {axisId: device_summary.avg_poor_lcp_pct, id: device_summary.avg_poor_lcp_pct,
            name: Avg Poor LCP %}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    font_size: '11'
    label_value_format: 0.00\%
    series_colors:
      device_summary.avg_good_lcp_pct: "#08B248"
      device_summary.avg_ni_lcp_pct: "#FC9200"
      device_summary.avg_poor_lcp_pct: "#FC2E31"
      device_summary.total_phone_traffic_proportion: "#FC9200"
      device_summary.total_desktop_traffic_proportion: "#2B99F7"
      device_summary.total_tablet_traffic_proportion: "#08B248"
      device_summary.total_4g_density: "#FC9200"
      device_summary.total_3g_density: "#2B99F7"
      device_summary.total_2g_density: "#08B248"
      device_summary.total_offline_density: "#A918B4"
    series_labels:
      device_summary.total_phone_traffic_proportion: Phone
      device_summary.total_desktop_traffic_proportion: Desktop
      device_summary.total_tablet_traffic_proportion: Tablet
      device_summary.total_4g_density: 4G
      device_summary.total_3g_density: 3G
      device_summary.total_2g_density: 2G
      device_summary.total_slow2g_density: Slow 2G
      device_summary.total_offline_density: Offline
    label_color: []
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [device_summary.date_month]
    title_hidden: true
    listen:
      Origin: device_summary.origin
      Device Type: device_summary.device
    row: 5
    col: 5
    width: 19
    height: 10
  - title: Origin
    name: Origin
    model: chrome-ux-block
    explore: device_summary
    type: single_value
    fields: [device_summary.origin, device_summary.date_month]
    sorts: [device_summary.date_month desc]
    limit: 1
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [device_summary.date_month]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '9'
    orientation: auto
    style_device_summary.origin: "#1A73E8"
    show_title_device_summary.origin: true
    title_placement_device_summary.origin: above
    value_format_device_summary.origin: ''
    style_device_summary.date_month: "#12B5CB"
    show_title_device_summary.date_month: true
    title_placement_device_summary.date_month: above
    value_format_device_summary.date_month: ''
    show_comparison_device_summary.date_month: false
    custom_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Origin: device_summary.origin
      Device Type: device_summary.device
    row: 0
    col: 5
    width: 10
    height: 2
  - title: Month
    name: Month
    model: chrome-ux-block
    explore: device_summary
    type: single_value
    fields: [device_summary.origin, device_summary.date_month]
    sorts: [device_summary.date_month desc]
    limit: 1
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [device_summary.origin]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '9'
    orientation: auto
    style_device_summary.origin: "#1A73E8"
    show_title_device_summary.origin: true
    title_placement_device_summary.origin: above
    value_format_device_summary.origin: ''
    style_device_summary.date_month: "#12B5CB"
    show_title_device_summary.date_month: true
    title_placement_device_summary.date_month: above
    value_format_device_summary.date_month: ''
    show_comparison_device_summary.date_month: false
    custom_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Origin: device_summary.origin
      Device Type: device_summary.device
    row: 0
    col: 15
    width: 9
    height: 2
  - title: Scorecardsss
    name: Scorecardsss
    model: chrome-ux-block
    explore: device_summary
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [device_summary.date_pop_month, device_summary.total_4g_density, device_summary.4g_traffic_last_month,
      device_summary.total_3g_density, device_summary.3g_traffic_last_month]
    fill_fields: [device_summary.date_pop_month]
    sorts: [device_summary.date_pop_month desc]
    limit: 1
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.desktop_density
      expression: ''
      label: Sum of Desktop Density
      measure: sum_of_desktop_density
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.phone_density
      expression: ''
      label: Sum of Phone Density
      measure: sum_of_phone_density
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: device_summary.tablet_density
      expression: ''
      label: Sum of Tablet Density
      measure: sum_of_tablet_density
      type: sum
    hidden_fields: [device_summary.date_pop_month]
    hidden_points_if_no: []
    series_labels:
      device_summary.total_phone_traffic_proportion: Phone
      device_summary.total_desktop_traffic_proportion: Desktop
      device_summary.total_tablet_traffic_proportion: Tablet
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_device_summary.total_4g_density: "#3A4245"
    show_title_device_summary.total_4g_density: true
    title_override_device_summary.total_4g_density: 4G
    title_placement_device_summary.total_4g_density: above
    value_format_device_summary.total_4g_density: ''
    show_comparison_device_summary.4g_traffic_last_month: true
    comparison_style_device_summary.4g_traffic_last_month: percentage_change
    comparison_show_label_device_summary.4g_traffic_last_month: false
    pos_is_bad_device_summary.4g_traffic_last_month: false
    style_device_summary.total_3g_density: "#3A4245"
    show_title_device_summary.total_3g_density: true
    title_override_device_summary.total_3g_density: 3G
    title_placement_device_summary.total_3g_density: above
    value_format_device_summary.total_3g_density: ''
    show_comparison_device_summary.total_3g_density: false
    show_comparison_device_summary.3g_traffic_last_month: true
    comparison_style_device_summary.3g_traffic_last_month: percentage_change
    comparison_show_label_device_summary.3g_traffic_last_month: false
    pos_is_bad_device_summary.3g_traffic_last_month: false
    comparison_label_placement_device_summary.3g_traffic_last_month: below
    comp_value_format_device_summary.3g_traffic_last_month: ''
    comparison_label_placement_device_summary.4g_traffic_last_month: below
    comp_value_format_device_summary.4g_traffic_last_month: ''
    style_device_summary.total_phone_traffic_proportion: "#3A4245"
    show_title_device_summary.total_phone_traffic_proportion: true
    title_override_device_summary.total_phone_traffic_proportion: Phone
    title_placement_device_summary.total_phone_traffic_proportion: above
    value_format_device_summary.total_phone_traffic_proportion: ''
    show_comparison_device_summary.total_phone_traffic_proportion_last_month: true
    comparison_style_device_summary.total_phone_traffic_proportion_last_month: percentage_change
    comparison_show_label_device_summary.total_phone_traffic_proportion_last_month: false
    pos_is_bad_device_summary.total_phone_traffic_proportion_last_month: false
    style_device_summary.total_desktop_traffic_proportion: "#3A4245"
    show_title_device_summary.total_desktop_traffic_proportion: true
    title_override_device_summary.total_desktop_traffic_proportion: Desktop
    title_placement_device_summary.total_desktop_traffic_proportion: above
    value_format_device_summary.total_desktop_traffic_proportion: ''
    show_comparison_device_summary.total_desktop_traffic_proportion: false
    show_comparison_device_summary.total_desktop_traffic_proportion_last_month: true
    comparison_style_device_summary.total_desktop_traffic_proportion_last_month: percentage_change
    comparison_show_label_device_summary.total_desktop_traffic_proportion_last_month: false
    pos_is_bad_device_summary.total_desktop_traffic_proportion_last_month: false
    comparison_label_placement_device_summary.total_phone_traffic_proportion_last_month: below
    comp_value_format_device_summary.total_phone_traffic_proportion_last_month: ''
    comparison_label_placement_device_summary.total_desktop_traffic_proportion_last_month: below
    comp_value_format_device_summary.total_desktop_traffic_proportion_last_month: ''
    style_device_summary.total_desktop_traffic_proportion_last_month: "#3A4245"
    show_title_device_summary.total_desktop_traffic_proportion_last_month: true
    title_placement_device_summary.total_desktop_traffic_proportion_last_month: above
    value_format_device_summary.total_desktop_traffic_proportion_last_month: ''
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: device_summary.avg_good_lcp_pct,
            id: device_summary.avg_good_lcp_pct, name: Avg Good LCP %}, {axisId: device_summary.avg_ni_lcp_pct,
            id: device_summary.avg_ni_lcp_pct, name: Avg Needs Improvement LCP %},
          {axisId: device_summary.avg_poor_lcp_pct, id: device_summary.avg_poor_lcp_pct,
            name: Avg Poor LCP %}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    font_size: '9'
    label_value_format: 0.00\%
    series_colors:
      device_summary.avg_good_lcp_pct: "#08B248"
      device_summary.avg_ni_lcp_pct: "#FC9200"
      device_summary.avg_poor_lcp_pct: "#FC2E31"
      device_summary.total_phone_traffic_proportion: "#FC9200"
      device_summary.total_desktop_traffic_proportion: "#2B99F7"
      device_summary.total_tablet_traffic_proportion: "#08B248"
    label_color: [black, white, green]
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 0
    show_comparison_device_summary.total_4g_density: false
    title_hidden: true
    listen:
      Origin: device_summary.origin
      Device Type: device_summary.device
    row: 2
    col: 5
    width: 19
    height: 3
  - title: Navbar
    name: Navbar
    model: chrome-ux-block
    explore: device_summary
    type: looker_grid
    fields: [device_summary.nav_bar_active_connection_distribution]
    filters: {}
    sorts: [device_summary.nav_bar_active_connection_distribution]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '1'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#FFFF"
    header_background_color: "#FFFF"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    title_hidden: true
    listen:
      Origin: device_summary.origin
      Device Type: device_summary.device
    row: 0
    col: 0
    width: 5
    height: 15
  filters:
  - name: Origin
    title: Origin
    type: field_filter
    default_value: https://cloud.google.com
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: chrome-ux-block
    explore: device_summary
    listens_to_filters: []
    field: device_summary.origin
  - name: Device Type
    title: Device Type
    type: field_filter
    default_value: desktop,phone,tablet
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: chrome-ux-block
    explore: device_summary
    listens_to_filters: []
    field: device_summary.device
