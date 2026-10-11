variable "origin_ca_certificates_lookup" {
  description = <<EOT
Map of origin_ca_certificates_lookup, attributes below
Required:
    - zone_id
Optional:
    - limit
    - max_items
    - offset
EOT

  type = map(object({
    zone_id   = string
    limit     = optional(number)
    max_items = optional(number)
    offset    = optional(number)
  }))
}

