output "zone_id" {
  description = "Zone ID of CloudFlare zone"
  value       = {for k, v in cloudflare_zone.this : k => v.id}
}

output "name_servers" {
  description = "Name servers of CloudFlare zone"
  value       = {for k, v in cloudflare_zone.this : k => v.name_servers}
}
