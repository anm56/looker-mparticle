view: iosspksalesreports {
  sql_table_name: ios_homer.iosspksalesreports ;;

  dimension: appleidentifier {
    type: string
    sql: ${TABLE}.appleidentifier ;;
  }

  dimension_group: begindate {
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
    sql: ${TABLE}.begindate ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: cmb {
    type: string
    sql: ${TABLE}.cmb ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}.countrycode ;;
  }

  dimension: currencyofproceeds {
    type: string
    sql: ${TABLE}.currencyofproceeds ;;
  }

  dimension: customercurrency {
    type: string
    sql: ${TABLE}.customercurrency ;;
  }

  dimension: customerprice {
    type: number
    sql: ${TABLE}.customerprice ;;
  }

  dimension: developer {
    type: string
    sql: ${TABLE}.developer ;;
  }

  dimension: developerproceeds {
    type: number
    sql: ${TABLE}.developerproceeds ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension_group: enddate {
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
    sql: ${TABLE}.enddate ;;
  }

  dimension: parentidentifier {
    type: string
    sql: ${TABLE}.parentidentifier ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: preservedpricing {
    type: string
    sql: ${TABLE}.preservedpricing ;;
  }

  dimension: proceedsreason {
    type: string
    sql: ${TABLE}.proceedsreason ;;
  }

  dimension: producttypeidentifier {
    type: string
    sql: ${TABLE}.producttypeidentifier ;;
  }

  dimension: promocode {
    type: string
    sql: ${TABLE}.promocode ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: providercountry {
    type: string
    sql: ${TABLE}.providercountry ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: subscription {
    type: string
    sql: ${TABLE}.subscription ;;
  }

  dimension: supportedplatforms {
    type: string
    sql: ${TABLE}.supportedplatforms ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.units ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
