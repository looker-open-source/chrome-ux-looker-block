---
- dashboard: core_web_vitals
  title: Core Web Vitals
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jBKmgqzsGLKpyunJc0eNCs
  elements:
  - title: Largest Contentful Paint (LCP)
    name: Largest Contentful Paint (LCP)
    model: chrome-ux-block
    explore: country_summary
    type: looker_bar
    fields: [country_summary.avg_good_lcp_pct, country_summary.avg_ni_lcp_pct, country_summary.avg_poor_lcp_pct,
      country_summary.device]
    filters: {}
    sorts: [country_summary.avg_good_lcp_pct desc 0]
    limit: 500
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
    hide_legend: false
    series_colors:
      country_summary.avg_good_lcp_pct: "#08B248"
      country_summary.avg_ni_lcp_pct: "#FC9200"
      country_summary.avg_poor_lcp_pct: "#FC2E31"
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Date Date: country_summary.date_date
      Origin: country_summary.origin
      Device Type: country_summary.device
    row: 3
    col: 8
    width: 16
    height: 6
  - title: Interaction to Next Paint (INP)
    name: Interaction to Next Paint (INP)
    model: chrome-ux-block
    explore: country_summary
    type: looker_bar
    fields: [country_summary.device, country_summary.avg_good_inp_pct, country_summary.avg_ni_inp_pct,
      country_summary.avg_poor_inp_pct]
    filters: {}
    sorts: [country_summary.avg_good_inp_pct desc 0]
    limit: 500
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
    hide_legend: false
    series_colors:
      country_summary.avg_good_lcp_pct: "#08B248"
      country_summary.avg_ni_lcp_pct: "#FC9200"
      country_summary.avg_poor_lcp_pct: "#FC2E31"
      country_summary.avg_good_inp_pct: "#08B248"
      country_summary.avg_ni_inp_pct: "#FC9200"
      country_summary.avg_poor_inp_pct: "#FC2E31"
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date Date: country_summary.date_date
      Origin: country_summary.origin
      Device Type: country_summary.device
    row: 9
    col: 8
    width: 16
    height: 6
  - title: Cumulative Layout Shift (CLS)
    name: Cumulative Layout Shift (CLS)
    model: chrome-ux-block
    explore: country_summary
    type: looker_bar
    fields: [country_summary.device, country_summary.avg_good_cls_pct, country_summary.avg_ni_cls_pct,
      country_summary.avg_poor_cls_pct]
    filters: {}
    sorts: [country_summary.avg_good_cls_pct desc 0]
    limit: 500
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
    hide_legend: false
    series_colors:
      country_summary.avg_good_lcp_pct: "#08B248"
      country_summary.avg_ni_lcp_pct: "#FC9200"
      country_summary.avg_poor_lcp_pct: "#FC2E31"
      country_summary.avg_good_inp_pct: "#08B248"
      country_summary.avg_ni_inp_pct: "#FC9200"
      country_summary.avg_poor_inp_pct: "#FC2E31"
      country_summary.avg_good_cls_pct: "#08B248"
      country_summary.avg_ni_cls_pct: "#FC9200"
      country_summary.avg_poor_cls_pct: "#FC2E31"
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date Date: country_summary.date_date
      Origin: country_summary.origin
      Device Type: country_summary.device
    row: 15
    col: 8
    width: 16
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ## **Largest Contentful Paint (LCP)**

      LCP reports the render time of the largest content element that is visible within the viewport.

      <a href="https://web.dev/articles/lcp" target="_blank">web.dev/lcp</a>
    row: 3
    col: 0
    width: 8
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ## **Interaction to Next Paint (INP)**

      INP reports the overall responsiveness to user interactions, as measured by the longest time from an interaction until the next frame is presented with visual feedback, ignoring outliers.

      <a href="https://web.dev/articles/inp" target="_blank">web.dev/inp</a>
    row: 9
    col: 0
    width: 8
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ## **Cumulative Layout Shift (CLS)**

      CLS measures the sum total of all individual layout shift scores for every unexpected layout shift that occurs during the entire lifespan of the page.

      <a href="https://web.dev/articles/cls" target="_blank">web.dev/cls</a>
    row: 15
    col: 0
    width: 8
    height: 6
  - title: Origin
    name: Origin
    model: chrome-ux-block
    explore: country_summary
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [country_summary.origin, country_summary.date_month]
    filters: {}
    sorts: [country_summary.date_month desc]
    limit: 1
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '9'
    orientation: auto
    style_country_summary.origin: "#1A73E8"
    show_title_country_summary.origin: true
    title_placement_country_summary.origin: above
    value_format_country_summary.origin: ''
    style_country_summary.date_month: "#12B5CB"
    show_title_country_summary.date_month: true
    title_placement_country_summary.date_month: above
    value_format_country_summary.date_month: ''
    show_comparison_country_summary.date_month: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    title_hidden: true
    listen:
      Date Date: country_summary.date_date
      Origin: country_summary.origin
      Device Type: country_summary.device
    row: 0
    col: 8
    width: 16
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":" "}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 8
    height: 2
  - title: _______
    name: _______
    model: chrome-ux-block
    explore: country_summary
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [country_summary.crux_vis_tool]
    filters: {}
    sorts: [country_summary.crux_vis_tool]
    limit: 1
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_country_summary.crux_vis_tool: "#3A4245"
    show_title_country_summary.crux_vis_tool: false
    title_placement_country_summary.crux_vis_tool: above
    value_format_country_summary.crux_vis_tool: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
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
    hide_legend: false
    series_colors:
      country_summary.avg_good_lcp_pct: "#08B248"
      country_summary.avg_ni_lcp_pct: "#FC9200"
      country_summary.avg_poor_lcp_pct: "#FC2E31"
    column_group_spacing_ratio: 0.2
    hidden_pivots: {}
    defaults_version: 0
    title_hidden: true
    listen:
      Date Date: country_summary.date_date
      Origin: country_summary.origin
      Device Type: country_summary.device
    row: 2
    col: 4
    width: 18
    height: 1
  filters:
  - name: Date Date
    title: Date Date
    type: field_filter
    default_value: last month
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: chrome-ux-block
    explore: country_summary
    listens_to_filters: []
    field: country_summary.date_date
  - name: Origin
    title: Origin
    type: field_filter
    default_value: https://cloud.google.com
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: chrome-ux-block
    explore: country_summary
    listens_to_filters: []
    field: country_summary.origin
  - name: Device Type
    title: Device Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: chrome-ux-block
    explore: country_summary
    listens_to_filters: []
    field: country_summary.device
