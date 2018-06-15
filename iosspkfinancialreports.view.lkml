view: iosspkfinancialreports {
  sql_table_name: ios_homer.iosspkfinancialreports ;;

  dimension: appleid {
    type: string
    sql: ${TABLE}.appleid ;;
  }

  dimension: countryofsale {
    type: string
    sql: ${TABLE}.countryofsale ;;
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

  dimension: extendedpartnershare {
    type: number
    sql: ${TABLE}.extendedpartnershare ;;
  }

  dimension: grid {
    type: string
    sql: ${TABLE}.grid ;;
  }

  dimension: isrcisbn {
    type: string
    sql: ${TABLE}.isrcisbn ;;
  }

  dimension: otherid {
    type: string
    sql: ${TABLE}.otherid ;;
  }

  dimension: partnershare {
    type: number
    sql: ${TABLE}.partnershare ;;
  }

  dimension: partnersharecurrency {
    type: string
    sql: ${TABLE}.partnersharecurrency ;;
  }

  dimension: preorderflag {
    type: string
    sql: ${TABLE}.preorderflag ;;
  }

  dimension: producttype {
    type: string
    sql: ${TABLE}.producttype ;;
  }

  dimension: promocode {
    type: string
    sql: ${TABLE}.promocode ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.publisher ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: salesorreturn {
    type: string
    sql: ${TABLE}.salesorreturn ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}.startdate ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
