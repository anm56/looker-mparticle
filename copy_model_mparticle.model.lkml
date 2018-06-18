connection: "analytics-001-redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: copy_model_mparticle_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: copy_model_mparticle_default_datagroup

explore: ioshomerfinancialreports {}

explore: ioshomersalesreports {}

explore: ioshomersubscriptioneventreports {}

explore: ioshomersubscriptioneventreports_test_as_root_2 {}

explore: ioshomersubscriptionreports {}

explore: iosspkfinancialreports {}

explore: iosspksalesreports {}

explore: iosspksubscriptioneventreports {}

explore: iosspksubscriptionreports {}

#philip from Looker support's change
explore:rawevents  {
  join: users {
    sql_on: ${rawevents.mparticle_user_id} = ${users.mparticle_user_id} ;;
    relationship: many_to_one
  }
  }
