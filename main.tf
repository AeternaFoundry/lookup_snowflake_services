data "snowflake_services" "services_lookup" {
  for_each = var.services_lookup

  like          = each.value.like
  service_type  = each.value.service_type
  starts_with   = each.value.starts_with
  with_describe = each.value.with_describe

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account      = in.value.account
      compute_pool = in.value.compute_pool
      database     = in.value.database
      schema       = in.value.schema
    }
  }

  dynamic "limit" {
    for_each = each.value.limit != null ? [each.value.limit] : []
    content {
      from = limit.value.from
      rows = limit.value.rows
    }
  }
}

