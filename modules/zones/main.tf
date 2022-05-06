resource "cloudflare_zone" "this" {
  for_each = var.create ? var.zones : tomap({})

  zone       = each.key
  paused     = try(each.value.paused, null)
  jump_start = try(each.value.jump_start, null)
  plan       = try(each.value.plan, null)
  type       = try(each.value.type, null)
}
