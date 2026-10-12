variable "services_lookup" {
  description = <<EOT
Map of services_lookup, attributes below
Optional:
    - like
    - service_type
    - starts_with
    - with_describe
    - in (block):
        - account (optional)
        - compute_pool (optional)
        - database (optional)
        - schema (optional)
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like          = optional(string)
    service_type  = optional(string)
    starts_with   = optional(string)
    with_describe = optional(bool)
    in = optional(object({
      account      = optional(bool)
      compute_pool = optional(string)
      database     = optional(string)
      schema       = optional(string)
    }))
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

