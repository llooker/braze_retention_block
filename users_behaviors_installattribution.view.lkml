# Install Attribution Events
view: users_behaviors_installattribution {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_INSTALLATTRIBUTION ;;

  dimension: id {
    primary_key: yes
    description: "unique id of this event"
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: external_user_id {
    description: "External ID of the user"
    type: string
    sql: ${TABLE}."EXTERNAL_USER_ID" ;;
  }

  dimension: source {
    description: "the source of the attribution"
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension_group: time {
    description: "timestamp of the event"
    label: "Time"
    type: time
    datatype: epoch
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIME" ;;
  }

  dimension: user_id {
    description: "braze user id of the user"
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count_distinct_user_id {
    description: "unique count of Braze user IDs"
    type: count_distinct
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count_distinct_id {
    description: "unique count of event IDs"
    type: count_distinct
    sql: ${TABLE}."ID" ;;
  }

  measure: install_attribution_count {
    description: "count of install attribution events"
    type: count
  }
}
