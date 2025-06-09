---
- dashboard: largest_contentful_paint_lcp
  title: Largest Contentful Paint (LCP)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Hd7yGnIXxLU65XmWGBDF6s
  elements:
  - title: By Month
    name: By Month
    model: chrome-ux-block
    explore: device_summary
    type: looker_bar
    fields: [device_summary.date_month_name, device_summary.date_year, device_summary.dynamic_good_pct_metric,
      device_summary.dynamic_ni_pct_metric, device_summary.dynamic_poor_pct_metric,
      device_summary.date_month]
    filters:
      device_summary.dynamic_metric: lcp
    sorts: [device_summary.date_month desc]
    limit: 10
    column_limit: 50
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
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.00\%
    series_colors:
      device_summary.avg_good_lcp_pct: "#08B248"
      device_summary.avg_ni_lcp_pct: "#FC9200"
      device_summary.avg_poor_lcp_pct: "#FC2E31"
      device_summary.dynamic_good_pct_metric: "#08B248"
      device_summary.dynamic_ni_pct_metric: "#FC9200"
      device_summary.dynamic_poor_pct_metric: "#FC2E31"
    column_group_spacing_ratio: 0.2
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [device_summary.date_month]
    hidden_pivots: {}
    title_hidden: true
    listen:
      Device Type: device_summary.device
      Origin: device_summary.origin
    row: 7
    col: 0
    width: 24
    height: 12
  - title: Origin
    name: Origin
    model: chrome-ux-block
    explore: device_summary
    type: single_value
    fields: [device_summary.origin, device_summary.date_month]
    filters: {}
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
      Device Type: device_summary.device
      Origin: device_summary.origin
    row: 2
    col: 0
    width: 11
    height: 2
  - title: Month
    name: Month
    model: chrome-ux-block
    explore: device_summary
    type: single_value
    fields: [device_summary.origin, device_summary.date_month]
    filters: {}
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
      Device Type: device_summary.device
      Origin: device_summary.origin
    row: 2
    col: 11
    width: 13
    height: 2
  - title: Scorecardss
    name: Scorecardss
    model: chrome-ux-block
    explore: device_summary
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [device_summary.avg_good_lcp_pct, device_summary.good_lcp_last_month,
      device_summary.date_pop_month, device_summary.avg_p75_lcp, device_summary.p75_lcp_last_month,
      device_summary.avg_poor_lcp_pct, device_summary.poor_lcp_last_month]
    fill_fields: [device_summary.date_pop_month]
    filters:
      device_summary.dynamic_metric: lcp
    sorts: [device_summary.date_pop_month desc]
    limit: 1
    column_limit: 50
    hidden_fields: [device_summary.date_pop_month]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_device_summary.avg_good_lcp_pct: "#3A4245"
    show_title_device_summary.avg_good_lcp_pct: true
    title_override_device_summary.avg_good_lcp_pct: Good LCP
    title_placement_device_summary.avg_good_lcp_pct: above
    value_format_device_summary.avg_good_lcp_pct: ''
    show_comparison_device_summary.good_lcp_last_month: true
    comparison_style_device_summary.good_lcp_last_month: percentage_change
    comparison_show_label_device_summary.good_lcp_last_month: false
    pos_is_bad_device_summary.good_lcp_last_month: false
    style_device_summary.avg_p75_lcp: "#FC9200"
    show_title_device_summary.avg_p75_lcp: true
    title_override_device_summary.avg_p75_lcp: P75 LCP (All Devices)
    title_placement_device_summary.avg_p75_lcp: above
    value_format_device_summary.avg_p75_lcp: ''
    show_comparison_device_summary.avg_p75_lcp: false
    show_comparison_device_summary.p75_lcp_last_month: true
    comparison_style_device_summary.p75_lcp_last_month: percentage_change
    comparison_show_label_device_summary.p75_lcp_last_month: false
    pos_is_bad_device_summary.p75_lcp_last_month: true
    style_device_summary.avg_poor_lcp_pct: "#3A4245"
    show_title_device_summary.avg_poor_lcp_pct: true
    title_override_device_summary.avg_poor_lcp_pct: Poor LCP
    title_placement_device_summary.avg_poor_lcp_pct: above
    value_format_device_summary.avg_poor_lcp_pct: ''
    show_comparison_device_summary.avg_poor_lcp_pct: false
    show_comparison_device_summary.poor_lcp_last_month: true
    comparison_style_device_summary.poor_lcp_last_month: percentage_change
    comparison_show_label_device_summary.poor_lcp_last_month: false
    pos_is_bad_device_summary.poor_lcp_last_month: true
    comparison_label_placement_device_summary.poor_lcp_last_month: below
    comp_value_format_device_summary.poor_lcp_last_month: ''
    style_device_summary.poor_lcp_last_month: "#3A4245"
    show_title_device_summary.poor_lcp_last_month: true
    title_placement_device_summary.poor_lcp_last_month: above
    value_format_device_summary.poor_lcp_last_month: ''
    comparison_label_placement_device_summary.p75_lcp_last_month: below
    comp_value_format_device_summary.p75_lcp_last_month: ''
    style_device_summary.p75_lcp_last_month: "#3A4245"
    show_title_device_summary.p75_lcp_last_month: true
    title_placement_device_summary.p75_lcp_last_month: above
    value_format_device_summary.p75_lcp_last_month: ''
    comparison_label_placement_device_summary.good_lcp_last_month: below
    comp_value_format_device_summary.good_lcp_last_month: ''
    style_device_summary.good_lcp_last_month: "#3A4245"
    show_title_device_summary.good_lcp_last_month: true
    title_placement_device_summary.good_lcp_last_month: above
    value_format_device_summary.good_lcp_last_month: ''
    comparison_style_device_summary.avg_p75_lcp: value
    comparison_show_label_device_summary.avg_p75_lcp: true
    comparison_label_placement_device_summary.avg_p75_lcp: below
    comp_value_format_device_summary.avg_p75_lcp: ''
    hidden_pivots: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    title_hidden: true
    listen:
      Device Type: device_summary.device
      Origin: device_summary.origin
    row: 4
    col: 0
    width: 24
    height: 3
  - title: ___
    name: ___
    model: chrome-ux-block
    explore: device_summary
    type: single_value
    fields: [device_summary.nav_bar_lcp]
    filters: {}
    sorts: [device_summary.nav_bar_lcp]
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
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    title_hidden: true
    listen:
      Device Type: device_summary.device
      Origin: device_summary.origin
    row: 0
    col: 0
    width: 24
    height: 2
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