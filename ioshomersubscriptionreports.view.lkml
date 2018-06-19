view: ioshomersubscriptionreports {
  sql_table_name: ios_homer.ioshomersubscriptionreports ;;

  dimension: activefreetrials {
    type: number
    sql: ${TABLE}.activefreetrials ;;
  }

  dimension: activesubscriptions {
    type: number
    sql: ${TABLE}.activesubscriptions ;;
  }

  dimension: appappleid {
    type: string
    sql: ${TABLE}.appappleid ;;
  }

  dimension: appname {
    type: string
    sql: ${TABLE}.appname ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customercurrency {
    type: string
    sql: ${TABLE}.customercurrency ;;
  }

  dimension: customerprice {
    type: number
    sql: ${TABLE}.customerprice ;;
  }

  dimension: developerproceeds {
    type: number
    sql: ${TABLE}.developerproceeds ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: marketingoptins {
    type: number
    sql: ${TABLE}.marketingoptins ;;
  }

  dimension: preservedpricing {
    type: string
    sql: ${TABLE}.preservedpricing ;;
  }

  dimension: proceedscurrency {
    type: string
    sql: ${TABLE}.proceedscurrency ;;
  }

  dimension: proceedsreason {
    type: string
    sql: ${TABLE}.proceedsreason ;;
  }

  dimension_group: recorddate {
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
    sql: ${TABLE}.recorddate ;;
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

  measure: count {
    type: count
    drill_fields: [appname, subscriptionname]
  }
}
