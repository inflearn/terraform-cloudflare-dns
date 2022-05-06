output "id" {
  description = "The ID of the record"
  value       = {for k, v in cloudflare_record.this : k => v.id}
}

output "hostname" {
  description = "FQDN built using the zone domain and name"
  value       = {for k, v in cloudflare_record.this : k => v.hostname}
}
