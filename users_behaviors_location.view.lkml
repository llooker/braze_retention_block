# Location Events
view: users_behaviors_location {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_LOCATION ;;

  dimension: id {
    primary_key: yes
    description: "unique ID for this location event"
    hidden: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: alt_accuracy {
    description: "altitude accuracy of recorded location"
    type: number
    sql: ${TABLE}."ALT_ACCURACY" ;;
  }

  dimension: altitude {
    description: "altitude of recorded location"
    type: number
    sql: ${TABLE}."ALTITUDE" ;;
  }

  dimension: app_id {
    description: "id for the app on which the user action occurred"
    type: string
    sql: ${TABLE}."APP_ID" ;;
  }

  dimension: device_id {
    description: "id of the device on which the event occurred"
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
  }

  dimension: device_model {
    description: "hardware model of the device"
    type: string
    sql: ${TABLE}."DEVICE_MODEL" ;;
  }

  dimension: external_user_id {
    description: "External id of the user"
    hidden: yes
    type: string
    sql: ${TABLE}."EXTERNAL_USER_ID" ;;
  }

  dimension: latitude {
    description: "latitude of recorded location"
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: ll_accuracy {
    description: "latitude/longitude accuracy of recorded location"
    type: number
    sql: ${TABLE}."LL_ACCURACY" ;;
  }

  dimension: longitude {
    description: "longitude of recorded location"
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
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

  dimension_group: time_location_was_recorded {
    description: "timestamp of the location event"
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
    description: "Braze id of the user"
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

  measure: location_count {
    description: "count of location events"
    type: count
  }
}
