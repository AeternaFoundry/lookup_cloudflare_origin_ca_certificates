output "origin_ca_certificates_lookup_limit" {
  description = "Map of limit values across all origin_ca_certificates_lookup, keyed the same as var.origin_ca_certificates_lookup except keys with no limit are omitted"
  value       = { for k, v in data.cloudflare_origin_ca_certificates.origin_ca_certificates_lookup : k => v.limit if v.limit != null }
}
output "origin_ca_certificates_lookup_max_items" {
  description = "Map of max_items values across all origin_ca_certificates_lookup, keyed the same as var.origin_ca_certificates_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_origin_ca_certificates.origin_ca_certificates_lookup : k => v.max_items if v.max_items != null }
}
output "origin_ca_certificates_lookup_offset" {
  description = "Map of offset values across all origin_ca_certificates_lookup, keyed the same as var.origin_ca_certificates_lookup except keys with no offset are omitted"
  value       = { for k, v in data.cloudflare_origin_ca_certificates.origin_ca_certificates_lookup : k => v.offset if v.offset != null }
}
output "origin_ca_certificates_lookup_result" {
  description = "Map of result values across all origin_ca_certificates_lookup, keyed the same as var.origin_ca_certificates_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_origin_ca_certificates.origin_ca_certificates_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "origin_ca_certificates_lookup_zone_id" {
  description = "Map of zone_id values across all origin_ca_certificates_lookup, keyed the same as var.origin_ca_certificates_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_origin_ca_certificates.origin_ca_certificates_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

