# Purchase Events
view: users_behaviors_purchase {
  sql_table_name: PUBLIC.USERS_BEHAVIORS_PURCHASE ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    description: "unique ID for this purchase event"
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: app_id {
    description: "id for the app on which the user action occurred"
    type: string
    sql: ${TABLE}."APP_ID" ;;
  }

  dimension: currency {
    description: "three letter alpha ISO 4217 currency code"
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: device_id {
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
    hidden: yes
    type: string
    sql: ${TABLE}."EXTERNAL_USER_ID" ;;
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

  dimension: price {
    description: "price of product (sent in the “price” field of Amplitude HTTP API)"
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: product_id {
    description: "id of product purchased (sent in the “productId” field of Amplitude HTTP API)"
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: properties {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTIES" ;;
  }

  dimension_group: purchase_time {
    description: "timestamp of the purchase event"
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

  measure: purchase_count {
    description: "count of purchase events"
    type: count
  }
}
