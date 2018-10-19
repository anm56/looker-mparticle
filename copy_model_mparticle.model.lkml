connection: "analytics-001-redshift"

# # include all the views
# include: "*.view"

# # include all the dashboards
# include: "*.dashboard"

# datagroup: copy_model_mparticle_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: copy_model_mparticle_default_datagroup

# explore:rawevents  {
#   join: users {
#     sql_on: ${rawevents.mparticle_user_id} = ${users.mparticle_user_id} ;;
#     relationship: many_to_one
#   }
#   }
