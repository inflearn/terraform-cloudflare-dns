resource "cloudflare_record" "this" {
  for_each = var.create ? {for i, v in var.records : i => v} : tomap({})

  zone_id         = var.zone_id
  name            = each.value.name
  type            = each.value.type
  value           = try(each.value.value, null)
  ttl             = try(each.value.ttl, null)
  priority        = try(each.value.priority, null)
  proxied         = try(each.value.proxied, null)
  allow_overwrite = try(each.value.allow_overwrite, null)
}
