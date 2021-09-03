- dashboard: customer_acquisition_cost
  title: Customer Acquisition Cost
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Acquisition cost by city
    name: Acquisition cost by city
    model: block_netsuite
    explore: transaction_details
    type: looker_column
    fields: [transaction_details.customer_acquisition_cost, transaction_details.customer_city]
    limit: 500
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
    listen: {}
    row: 14
    col: 8
    width: 8
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "#**Customer acquisition cost**\n"
    row: 0
    col: 8
    width: 16
    height: 2
  - title: Acquisition cost by state
    name: Acquisition cost by state
    model: block_netsuite
    explore: transaction_details
    type: looker_pie
    fields: [transaction_details.customer_acquisition_cost, transaction_details.customer_state]
    filters:
      transaction_details.customer_state: "-NULL"
    sorts: [transaction_details.customer_acquisition_cost desc]
    limit: 500
    value_labels: legend
    label_type: labPer
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
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    row: 14
    col: 16
    width: 8
    height: 7
  - title: All-time
    name: All-time
    model: block_netsuite
    explore: transaction_details
    type: single_value
    fields: [transaction_details.customer_acquisition_cost]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 2
    col: 0
    width: 8
    height: 2
  - title: Acquisition cost over time
    name: Acquisition cost over time
    model: block_netsuite
    explore: transaction_details
    type: looker_area
    fields: [transaction_details.customer_acquisition_cost, transaction_details.transaction_month]
    filters:
      transaction_details.customer_acquisition_cost: ">0.00"
    sorts: [transaction_details.transaction_month desc]
    limit: 500
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
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
    defaults_version: 1
    row: 14
    col: 0
    width: 8
    height: 7
  - title: Last quarter
    name: Last quarter
    model: block_netsuite
    explore: transaction_details
    type: single_value
    fields: [transaction_details.customer_acquisition_cost, transaction_details.transaction_month]
    fill_fields: [transaction_details.transaction_month]
    filters:
      transaction_details.transaction_date: 2016/01/01 to 2016/04/01
    sorts: [transaction_details.transaction_month desc]
    limit: 500
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
    defaults_version: 1
    series_types: {}
    row: 2
    col: 16
    width: 8
    height: 2
  - title: Last half
    name: Last half
    model: block_netsuite
    explore: transaction_details
    type: single_value
    fields: [transaction_details.customer_acquisition_cost, transaction_details.transaction_month]
    fill_fields: [transaction_details.transaction_month]
    filters:
      transaction_details.transaction_date: 2016/01/01 to 2016/07/01
    sorts: [transaction_details.transaction_month desc]
    limit: 500
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
    defaults_version: 1
    series_types: {}
    row: 2
    col: 8
    width: 8
    height: 2
  - title: Cost by customer
    name: Cost by customer
    model: block_netsuite
    explore: transaction_details
    type: looker_grid
    fields: [transaction_details.customer_name, transaction_details.customer_acquisition_cost]
    filters:
      transaction_details.customer_acquisition_cost: ">0"
      transaction_details.customer_name: "-NULL"
    sorts: [transaction_details.customer_name desc]
    limit: 500
    show_view_names: false
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      transaction_details.customer_acquisition_cost:
        is_active: true
        palette:
          palette_id: 4e34d317-e608-9caf-aa4a-caa42d78544d
          collection_id: google
          custom_colors:
          - "#FDE293"
          - "#FBBC04"
          - "#EA8600"
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: transaction_details.customer_acquisition_cost,
            id: transaction_details.customer_acquisition_cost, name: Customer Acquisition
              Cost}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    series_types: {}
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
    listen: {}
    row: 10
    col: 13
    width: 11
    height: 4
  - title: Revenue per acquisition dollar spent
    name: Revenue per acquisition dollar spent
    model: block_netsuite
    explore: transaction_details
    type: looker_grid
    fields: [transaction_details.customer_name, cumulative_revenue, transaction_details.customer_acquisition_cost]
    filters:
      transaction_details.customer_name: "-NULL"
      transaction_details.sum_transaction_converted_amount: ">0.00"
      transaction_details.customer_acquisition_cost: ">0.00"
    sorts: [cumulative_revenue desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${cumulative_revenue}-${transaction_details.customer_acquisition_cost})\
          \ / ${transaction_details.customer_acquisition_cost}", label: Revenue as
          percent of acquisition cost, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: revenue_as_percent_of_acquisition_cost,
        _type_hint: number}, {measure: sum_of_transaction_amount, based_on: transaction_details.transaction_amount,
        expression: '', label: Sum of Transaction Amount, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: !!null '', label: Cumulative
          Revenue, value_format: !!null '', value_format_name: !!null '', based_on: transaction_details.sum_transaction_converted_amount,
        _kind_hint: measure, measure: cumulative_revenue, type: sum, _type_hint: number}]
    show_view_names: false
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      cumulative_revenue:
        is_active: true
        palette:
          palette_id: 514690a3-bab1-35bb-6509-b31d23f77bf8
          collection_id: google
          custom_colors:
          - "#A8DAB5"
          - "#34A853"
          - "#137333"
      transaction_details.customer_acquisition_cost:
        is_active: true
        palette:
          palette_id: 2e8a4d62-9a53-23bd-e735-dca741357878
          collection_id: google
          custom_colors:
          - "#FDE293"
          - "#FBBC04"
          - "#EA8600"
      revenue_as_percent_of_acquisition_cost:
        is_active: true
        palette:
          palette_id: 5cb31866-b95a-9fe8-d50d-e8619188b5fb
          collection_id: google
          custom_colors:
          - "#AECBFA"
          - "#4285F4"
          - "#185ABC"
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
    series_types: {}
    listen: {}
    row: 4
    col: 0
    width: 24
    height: 6
  - title: Revenue by customer
    name: Revenue by customer
    model: block_netsuite
    explore: transaction_details
    type: looker_grid
    fields: [transaction_details.customer_name, transaction_details.sum_transaction_amount]
    filters:
      transaction_details.customer_name: "-NULL"
    sorts: [transaction_details.sum_transaction_amount desc]
    limit: 500
    show_view_names: false
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      transaction_details.sum_transaction_amount:
        is_active: true
        palette:
          palette_id: e18a4969-7795-8c17-6a37-59f8d6608197
          collection_id: google
          custom_colors:
          - "#A8DAB5"
          - "#34A853"
          - "#137333"
    series_value_format:
      transaction_details.sum_transaction_amount:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
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
    series_types: {}
    row: 10
    col: 0
    width: 13
    height: 4
