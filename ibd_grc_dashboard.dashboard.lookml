---
- dashboard: dossier_status
  title: Dossier Status
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gDi81Fn7WDWuRBmAeLGF5a
  elements:
  - title: Total Dossier
    name: Total Dossier
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: single_value
    fields: [count_of_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: "-Hold from IBD,-Planning"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: ''
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Total Registered
    name: Total Registered
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: single_value
    fields: [count_of_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Registered,Re-registered,Registered(Re-registration
          dossier sent),Re-registration dossier sent
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#7CB342"
    defaults_version: 1
    listen: {}
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Total Dropped
    name: Total Dropped
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: single_value
    fields: [count_of_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Dropped(After Submission),Dropped(Before Submission)
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 4
    height: 2
  - title: Total On Going
    name: Total On Going
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: single_value
    fields: [count_of_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: New Dossier Sent,Waiting For Submission,Waiting For
          Registration,Waiting For Re-registration,Re-registered(Re-registered dossier
          sent)
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
    defaults_version: 1
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Total Expired
    name: Total Expired
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: single_value
    fields: [count_of_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Expired
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Dossier Status
    name: Dossier Status
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_pie
    fields: [count_of_id, status]
    sorts: [count_of_id desc 0]
    limit: 4
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of ID
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: count_of_id
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: "-Hold from IBD,-Planning"
    - category: dimension
      description: ''
      label: Status
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: status
      args:
      - ibdgrc_dossiers.status
      - - label: Registered
          filter: Registered,Registered(Re-registration dossier sent),Re-registered,Re-registration
            dossier sent
        - label: Expired
          filter: Expired
        - label: Dropped
          filter: Dropped(After Submission),Dropped(Before Submission)
        - label: On Going
          filter: New Dossier Sent,Waiting For Submission,Waiting For Registration,Waiting
            For Re-registration,Re-registered(Re-registered dossier sent)
      - Other
      _kind_hint: dimension
      _type_hint: string
    value_labels: labels
    label_type: labVal
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      Registered: "#7CB342"
      On Going: "#1A73E8"
      Dropped: "#EA4335"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Registration In 2024
    name: Registration In 2024
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, ibdgrc_dossiers.item_name, registration]
    filters:
      ibdgrc_dossiers.reg_date_year: last year
      ibdgrc_dossiers.status: Registered
    sorts: [ibdgrc_dossiers.country_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Registration
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: registration
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", ibdgrc_dossiers.country_name, registration,
      ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      registration:
        is_active: false
    series_text_format:
      registration:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      registration:
        format_string:
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
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 5
  - title: RE-Registration In 2024
    name: RE-Registration In 2024
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, ibdgrc_dossiers.item_name, registration]
    filters:
      ibdgrc_dossiers.re_reg_year: last year
      ibdgrc_dossiers.status: Re-registered
    sorts: [ibdgrc_dossiers.country_name, ibdgrc_dossiers.item_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Registration
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: registration
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", ibdgrc_dossiers.country_name, registration,
      ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      registration:
        is_active: false
    series_text_format:
      registration:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      registration:
        format_string:
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
    hidden_pivots: {}
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 5
  - title: Total Dossier Status
    name: Total Dossier Status
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, total, registered, expired, dropped, on_going]
    sorts: [ibdgrc_dossiers.country_name, total desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Total
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: total
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: "-Hold from IBD,-Planning"
    - category: measure
      expression: ''
      label: Registered
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: registered
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Re-registered,Registered,Registered(Re-registration
          dossier sent),Re-registration dossier sent
    - category: measure
      expression: ''
      label: Expired
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: expired
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Expired
    - category: measure
      expression: ''
      label: Dropped
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: dropped
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: Dropped(After Submission),Dropped(Before Submission)
    - category: measure
      expression: ''
      label: On Going
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: on_going
      type: count_distinct
      _type_hint: number
      filters:
        ibdgrc_dossiers.status: New Dossier Sent,Waiting For Submission,Waiting For
          Registration,Waiting For Re-registration,Re-registered(Re-registered dossier
          sent)
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", ibdgrc_dossiers.country_name, ibdgrc_dossiers.item_name,
      total, registered, expired, dropped, on_going]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id:
        is_active: false
      total:
        is_active: true
    series_text_format:
      total: {}
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
    hidden_pivots: {}
    listen: {}
    row: 11
    col: 0
    width: 24
    height: 7
  - title: Total Product Wise Registered Dossier
    name: Total Product Wise Registered Dossier
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, registered, ibdgrc_dossiers.item_name]
    filters:
      ibdgrc_dossiers.status: Registered,Re-registered,Registered(Re-registration
        dossier sent),Re-registration dossier sent
    sorts: [ibdgrc_dossiers.country_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Registered
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: registered
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [ibdgrc_dossiers.country_name, registered, ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      registered:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      registered:
        format_string:
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
    hidden_pivots: {}
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 5
  - title: Total Product Wise On Going Dossier
    name: Total Product Wise On Going Dossier
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, on_going, ibdgrc_dossiers.item_name]
    filters:
      ibdgrc_dossiers.status: New Dossier Sent,Waiting For Submission,Waiting For
        Registration,Re-registered(Re-registered dossier sent),Waiting For Re-registration
    sorts: [ibdgrc_dossiers.country_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: On Going
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: on_going
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [ibdgrc_dossiers.country_name, on_going, ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      on_going:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      on_going:
        format_string:
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
    hidden_pivots: {}
    listen: {}
    row: 23
    col: 12
    width: 12
    height: 5
  - title: Total Product Wise Dropped Dossier
    name: Total Product Wise Dropped Dossier
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, dropped, ibdgrc_dossiers.item_name]
    filters:
      ibdgrc_dossiers.status: Dropped(After Submission),Dropped(Before Submission)
    sorts: [ibdgrc_dossiers.country_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Dropped
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: dropped
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [ibdgrc_dossiers.country_name, dropped, ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      dropped:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      dropped:
        format_string:
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
    hidden_pivots: {}
    listen: {}
    row: 23
    col: 0
    width: 12
    height: 5
  - title: Total Product Wise Expired Dossier
    name: Total Product Wise Expired Dossier
    model: ibd_grc_model
    explore: ibdgrc_dossiers
    type: looker_grid
    fields: [ibdgrc_dossiers.country_name, expired, ibdgrc_dossiers.item_name]
    filters:
      ibdgrc_dossiers.status: Expired
    sorts: [ibdgrc_dossiers.country_name]
    subtotals: [ibdgrc_dossiers.country_name]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      expression: ''
      label: Expired
      based_on: ibdgrc_dossiers.id
      _kind_hint: measure
      measure: expired
      type: count_distinct
      _type_hint: number
      filters: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [ibdgrc_dossiers.country_name, expired, ibdgrc_dossiers.item_name]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      expired:
        bold: true
    series_collapsed:
      ibdgrc_dossiers.country_name: true
    series_value_format:
      expired:
        format_string:
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
    hidden_pivots: {}
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 5
