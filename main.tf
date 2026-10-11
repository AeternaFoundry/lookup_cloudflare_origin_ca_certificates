data "cloudflare_origin_ca_certificates" "origin_ca_certificates_lookup" {
  for_each = var.origin_ca_certificates_lookup

  zone_id   = each.value.zone_id
  limit     = each.value.limit
  max_items = each.value.max_items
  offset    = each.value.offset
}

