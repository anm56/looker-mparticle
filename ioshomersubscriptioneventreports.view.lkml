view: ioshomersubscriptioneventreports {
  sql_table_name: ios_homer.ioshomersubscriptioneventreports ;;

  dimension: appappleid {
    type: string
    sql: ${TABLE}.appappleid ;;
  }

  dimension: appname {
    type: string
    sql: ${TABLE}.appname ;;
  }

  dimension: cancellationreason {
    type: string
    sql: ${TABLE}.cancellationreason ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: consecutivepaidperiods {
    type: number
    sql: ${TABLE}.consecutivepaidperiods ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: daysbeforecanceling {
    type: number
    sql: ${TABLE}.daysbeforecanceling ;;
  }

  dimension: dayscanceled {
    type: number
    sql: ${TABLE}.dayscanceled ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension_group: eventdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eventdate ;;
  }

  dimension: marketingoptin {
    type: string
    sql: ${TABLE}.marketingoptin ;;
  }

  dimension: marketingoptinduration {
    type: number
    sql: ${TABLE}.marketingoptinduration ;;
  }

  dimension_group: originalstartdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.originalstartdate ;;
  }

  dimension: preservedpricing {
    type: number
    sql: ${TABLE}.preservedpricing ;;
  }

  dimension: previoussubscriptionappleid {
    type: string
    sql: ${TABLE}.previoussubscriptionappleid ;;
  }

  dimension: previoussubscriptionname {
    type: string
    sql: ${TABLE}.previoussubscriptionname ;;
  }

  dimension: proceedsreason {
    type: string
    sql: ${TABLE}.proceedsreason ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subscriptionappleid {
    type: string
    sql: ${TABLE}.subscriptionappleid ;;
  }

  dimension: subscriptionduration {
    type: string
    sql: ${TABLE}.subscriptionduration ;;
  }

  dimension: subscriptiongroupid {
    type: string
    sql: ${TABLE}.subscriptiongroupid ;;
  }

  dimension: subscriptionname {
    type: string
    sql: ${TABLE}.subscriptionname ;;
  }

  dimension: trial {
    type: string
    sql: ${TABLE}.trial ;;
  }

  dimension: trialduration {
    type: string
    sql: ${TABLE}.trialduration ;;
  }

  measure: count {
    type: count
    drill_fields: [appname, subscriptionname, previoussubscriptionname]
  }
}
