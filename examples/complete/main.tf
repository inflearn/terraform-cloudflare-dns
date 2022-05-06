provider "cloudflare" {
  api_token = ""
}

module "zones" {
  source = "../../modules/zones"

  zones = {
    "inflab-terraform-cloudflare-dns-example.com" = {
      paused     = false
      jump_start = false
      plan       = "free"
      type       = "full"
    }
  }
}

module "records" {
  source = "../../modules/records"

  zone_id = module.zones.zone_id["inflab-terraform-cloudflare-dns-example.com"]

  records = [
    {
      name  = ""
      type  = "A"
      value = "10.10.10.10"
    }
  ]
}
