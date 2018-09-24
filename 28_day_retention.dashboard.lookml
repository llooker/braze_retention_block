- dashboard: 28_day_retention
  title: 28-Day Retention
  layout: newspaper
  elements:
  - title: 28-Day Retention
    name: 28-Day Retention
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    type: table
    fields:
    - users_behaviors_app_firstsession.first_session_date
    - users_behaviors_app_sessionstart.count_distinct_user_id
    - users_behaviors_app_sessionstart.days_since_first_session
    pivots:
    - users_behaviors_app_sessionstart.days_since_first_session
    filters:
      users_behaviors_app_sessionstart.days_since_first_session: "[0, 31]"
    sorts:
    - users_behaviors_app_firstsession.first_session_date desc
    - users_behaviors_app_sessionstart.days_since_first_session
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: retention_rate
      label: Retention Rate
      expression: "${users_behaviors_app_sessionstart.count_distinct_user_id}/pivot_index(${users_behaviors_app_sessionstart.count_distinct_user_id},\
        \ 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: day_1_retention
      label: Day 1 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=1,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_2_retention
      label: Day 2 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=2,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_3_retention
      label: Day 3 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=3,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_4_retention
      label: Day 4 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=4,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_5_retention
      label: Day 5 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=5,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_6_retention
      label: Day 6 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=6,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_7_retention
      label: Day 7 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=7,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_14_retention
      label: Day 14 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=14,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_28_retention
      label: Day 28 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=28,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: White to Green
        colors:
        - "#FFFFFF"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - day_1_retention
      - day_2_retention
      - day_3_retention
      - day_4_retention
      - day_5_retention
      - day_6_retention
      - day_7_retention
      - day_8_retention
      - day_9_retention
      - day_10_retention
      - day_11_retention
      - day_12_retention
      - day_13_retention
      - day_14_retention
      - day_15_retention
      - day_16_retention
      - day_17_retention
      - day_18_retention
      - day_19_retention
      - day_20_retention
      - day_21_retention
      - day_22_retention
      - day_23_retention
      - day_24_retention
      - day_25_retention
      - day_26_retention
      - day_27_retention
      - day_28_retention
      - day_29_retention
      - day_30_retention
      - day_31_retention
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - users_behaviors_app_sessionstart.count_distinct_user_id
    - retention_rate
    hidden_points_if_no:
    series_types: {}
    y_axes: []
    listen:
      First Session Date: users_behaviors_app_firstsession.first_session_date
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 0
    width: 24
    height: 14
  filters:
  - name: First Session Date
    title: First Session Date
    type: field_filter
    default_value: 28 days ago for 28 days
    allow_multiple_values: true
    required: false
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    listens_to_filters: []
    field: users_behaviors_app_firstsession.first_session_date
