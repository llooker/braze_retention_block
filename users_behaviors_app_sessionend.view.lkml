# Session End Events
view: users_behaviors_app_sessionend {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_APP_SESSIONEND ;;

  dimension: id {
    primary_key: yes
    description: "unique id of this event"
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: app_id {
    description: "id for the app on which the user action occurred"
    type: string
    sql: ${TABLE}."APP_ID" ;;
  }

  dimension: device_id {
    description: "id of the device on which the session occurred"
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
  }

  dimension: device_model {
    description: "hardware model of the device"
    type: string
    sql: ${TABLE}."DEVICE_MODEL" ;;
  }

  dimension: duration {
    description: "seconds session lasted"
    type: number
    sql: ${TABLE}."DURATION" ;;
  }

  dimension: external_user_id {
    description: "External ID of the user"
    type: string
    sql: ${TABLE}."EXTERNAL_USER_ID" ;;
  }

  dimension: os_version {
    description: "OS version of device used for the action"
    type: string
    sql: ${TABLE}."OS_VERSION" ;;
  }

  dimension: platform {
    description: "platform of the device (iOS, Android, web, etc.)"
    type: string
    sql: ${TABLE}."PLATFORM" ;;
  }

  dimension_group: session_end {
    description: "timestamp the session ended"
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

  dimension: session_id {
    description: "id of the session"
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension: user_id {
    description: "Braze user ID"
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

  measure: count_distinct_session_id {
    description: "unique count of session IDs"
    type: count_distinct
    sql: ${TABLE}."SESSION_ID" ;;
  }

  measure: session_end_count {
    description: "count of session end events"
    type: count
  }
}
