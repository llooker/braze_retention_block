# Custom Events
view: users_behaviors_customevent {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_CUSTOMEVENT ;;

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

  dimension_group: custom_event_time {
    description: "timestamp of the custom event"
    type: time
    datatype: epoch
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      hour_of_day,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIME" ;;
  }

  dimension: custom_event_timezone {
    description: "IANA timezone of the user at the time of the event"
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension: device_id {
    description: "id of the device on which the event occurred"
    hidden:  yes
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

  dimension: name {
    description: "name of the custom event"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: os_version {
    description: "os version of device used for the action"
    type: string
    sql: ${TABLE}."OS_VERSION" ;;
  }

  dimension: platform {
    description: "platform of the device (iOS, Android, web, etc.)"
    type: string
    sql: ${TABLE}."PLATFORM" ;;
  }

  dimension: properties {
    description: "JSON encoded string of the custom properties for this event"
    type: string
    sql: ${TABLE}."PROPERTIES" ;;
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

  measure: custom_event_count {
    description: "count of custom events"
    type: count
  }
}
