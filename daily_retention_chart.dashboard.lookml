- dashboard: daily_retention_chart
  title: Daily Retention Chart
  description: "This dashboard displays daily retention for 31 days. Warning: for optimized daily retention dashboard performance, use our 28_day_retention dashboard."
  layout: newspaper
  elements:
  - title: 31-Day Retention Rate
    name: 31-Day Retention Rate
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    type: table
    fields:
    - users_behaviors_app_sessionstart.count_distinct_user_id
    - users_behaviors_app_sessionstart.days_since_first_session
    - users_behaviors_app_firstsession.first_session_date
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
    - table_calculation: day_8_retention
      label: Day 8 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=8,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_9_retention
      label: Day 9 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=9,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_10_retention
      label: Day 10 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=10,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_11_retention
      label: Day 11 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=11,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_12_retention
      label: Day 12 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=12,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_13_retention
      label: Day 13 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=13,
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
    - table_calculation: day_15_retention
      label: Day 15 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=15,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_16_retention
      label: Day 16 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=16,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_17_retention
      label: Day 17 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=17,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_18_retention
      label: Day 18 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=18,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_19_retention
      label: Day 19 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=19,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_20_retention
      label: Day 20 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=20,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_21_retention
      label: Day 21 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=21,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_22_retention
      label: Day 22 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=22,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_23_retention
      label: Day 23 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=23,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_24_retention
      label: Day 24 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=24,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_25_retention
      label: Day 25 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=25,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_26_retention
      label: Day 26 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=26,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_27_retention
      label: Day 27 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=27,
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
    - table_calculation: day_29_retention
      label: Day 29 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=29,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_30_retention
      label: Day 30 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=30,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: day_31_retention
      label: Day 31 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.days_since_first_session}=31,
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
    listen: {}
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 0
    width: 24
    height: 16
  filters:
  - name: First Session Date
    title: First Session Date
    type: field_filter
    default_value: 31 days ago for 31 days
    allow_multiple_values: true
    required: false
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    listens_to_filters: []
    field: users_behaviors_app_firstsession.first_session_date
