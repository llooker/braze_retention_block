# First Session Events
view: users_behaviors_app_firstsession {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_APP_FIRSTSESSION ;;

  dimension: id {
    description: "unique id of this event"
    primary_key: yes
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
  }

  dimension: device_model {
    description: "hardware model of the device"
    type: string
    sql: ${TABLE}."DEVICE_MODEL" ;;
  }

  dimension: external_user_id {
    description: "External ID of the user"
    hidden: yes
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

  dimension: session_id {
    description: "id of the session"
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension_group: first_session {
    description: "timestamp of a user's first session"
    type: time
    datatype: epoch
    timeframes: [
      raw,
      time,
      date,
      week,
      month
    ]
    sql: ${TABLE}."TIME" ;;
  }

  dimension: timezone {
    description: "IANA timezone of the user at the time of the event"
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
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

  measure: count_distinct_first_session_id {
    description: "unique count of session IDs"
    type: count_distinct
    sql: ${TABLE}."SESSION_ID" ;;
  }

  measure: first_session_count {
    description: "count of first session events"
    type: count
  }
}
