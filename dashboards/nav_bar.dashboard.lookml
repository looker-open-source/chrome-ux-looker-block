---
- dashboard: nav_bar
  title: Nav Bar
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XBb6eOh1oZuGRaMBusUQhB
  elements:
  - title: _
    name: _
    model: chrome-ux-block
    explore: navigation_bar
    type: single_value
    fields: [navigation_bar.horizontal_navigation_bar_dynamic]
    sorts: [navigation_bar.horizontal_navigation_bar_dynamic]
    limit: 500
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
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: transparent
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    header_font_color: "#f8ffe5"
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
    title_hidden: true
    listen:
      Origin: navigation_bar.origin_filter
      Device: navigation_bar.device_filter
    row: 2
    col: 1
    width: 22
    height: 2
  - name: ''
    type: text
    title_text: ''
    body_text: 'Explore Further: Modify Dashboard Filter to Display Diverse Metrics
      📊 ⬆️'
    row: 0
    col: 2
    width: 13
    height: 2
  filters:
  - name: Origin
    title: Origin
    type: field_filter
    default_value: https://cloud.google.com
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: chrome-ux-block
    explore: normalized
    listens_to_filters: []
    field: normalized.origin_filter
  - name: Device
    title: Device
    type: field_filter
    default_value: "%desktop%,%phone%,%tablet%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: chrome-ux-block
    explore: normalized
    listens_to_filters: []
    field: normalized.device_filter
