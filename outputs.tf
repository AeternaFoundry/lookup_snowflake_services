output "services_lookup_id" {
  description = "Map of id values across all services_lookup, keyed the same as var.services_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "services_lookup_in" {
  description = "Map of in values across all services_lookup, keyed the same as var.services_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "services_lookup_like" {
  description = "Map of like values across all services_lookup, keyed the same as var.services_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "services_lookup_limit" {
  description = "Map of limit values across all services_lookup, keyed the same as var.services_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "services_lookup_service_type" {
  description = "Map of service_type values across all services_lookup, keyed the same as var.services_lookup except keys with no service_type are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.service_type if v.service_type != null && length(v.service_type) > 0 }
}
output "services_lookup_services" {
  description = "Map of services values across all services_lookup, keyed the same as var.services_lookup except keys with no services are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.services if v.services != null && length(v.services) > 0 }
}
output "services_lookup_starts_with" {
  description = "Map of starts_with values across all services_lookup, keyed the same as var.services_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "services_lookup_with_describe" {
  description = "Map of with_describe values across all services_lookup, keyed the same as var.services_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_services.services_lookup : k => v.with_describe if v.with_describe != null }
}

