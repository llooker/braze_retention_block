# Session Start Events
view: users_behaviors_app_sessionstart {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_APP_SESSIONSTART ;;

  dimension: id {
    primary_key: yes
    description: "unique id of this event"
    hidden: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: app_id {
    description: "id for the app on which the user action occurred"
    type: string
    sql: ${TABLE}."APP_ID" ;;
  }

# The below two dimensions use Snowflake's SQL dialect; check for the correct syntax for your database.
  dimension: days_since_first_session {
    description: "difference between first session date and session start date"
    type: number
    value_format_name: decimal_0
    sql: DATEDIFF(day, ${users_behaviors_app_firstsession.first_session_date}, ${session_start_date}) ;;
  }

  dimension: weeks_since_first_session {
    description: "difference between first session week and session start week"
    type: number
    value_format_name: decimal_0
    sql: DATEDIFF(week, ${users_behaviors_app_firstsession.first_session_week}, ${session_start_week}) ;;
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

  dimension_group: session_start {
    description: "timestamp the session started"
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

  dimension: user_id {
    description: "Braze user id of the user"
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

  measure: session_start_count {
    description: "count of session start events"
    type: count
  }
}
