- dashboard: weekly_retention_chart
  title: Weekly Retention Chart
  layout: newspaper
  elements:
  - title: 12-Week Retention Chart
    name: 12-Week Retention Chart
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    type: table
    fields:
    - users_behaviors_app_firstsession.first_session_week
    - users_behaviors_app_sessionstart.count_distinct_user_id
    - users_behaviors_app_sessionstart.weeks_since_first_session
    pivots:
    - users_behaviors_app_sessionstart.weeks_since_first_session
    fill_fields:
    - users_behaviors_app_firstsession.first_session_week
    filters:
      users_behaviors_app_sessionstart.weeks_since_first_session: "[0, 12]"
    sorts:
    - users_behaviors_app_sessionstart.weeks_since_first_session
    - week desc
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
    - table_calculation: week
      label: Week
      expression: concat(${users_behaviors_app_firstsession.first_session_week}, "
        to ", add_days(6, ${users_behaviors_app_firstsession.first_session_week}))
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    - table_calculation: week_1_retention
      label: Week 1 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=1,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_2_retention
      label: Week 2 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=2,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_3_retention
      label: Week 3 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=3,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_4_retention
      label: Week 4 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=4,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_5_retention
      label: Week 5 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=5,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_6_retention
      label: Week 6 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=6,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_7_retention
      label: Week 7 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=7,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_8_retention
      label: Week 8 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=8,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_9_retention
      label: Week 9 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=9,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_10_retention
      label: Week 10 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=10,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_11_retention
      label: Week 11 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=11,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: week_12_retention
      label: Week 12 Retention
      expression: pivot_where(${users_behaviors_app_sessionstart.weeks_since_first_session}=12,
        ${retention_rate})
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: true
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
      - week_1_retention
      - week_2_retention
      - week_3_retention
      - week_4_retention
      - week_5_retention
      - week_6_retention
      - week_7_retention
      - week_8_retention
      - week_9_retention
      - week_10_retention
      - week_11_retention
      - week_12_retention
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - users_behaviors_app_firstsession.first_session_week
    - users_behaviors_app_sessionstart.count_distinct_user_id
    - retention_rate
    hidden_points_if_no:
    series_types: {}
    y_axes: []
    listen:
      First Session Week: users_behaviors_app_firstsession.first_session_week
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 0
    width: 24
    height: 11
  filters:
  - name: First Session Week
    title: First Session Week
    type: field_filter
    default_value: 12 weeks ago for 12 weeks
    allow_multiple_values: true
    required: false
    model: braze_currents_block_customer_behavior
    explore: users_behaviors_app_sessionstart
    listens_to_filters: []
    field: users_behaviors_app_firstsession.first_session_week
