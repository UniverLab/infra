resource "cloudflare_email_routing_settings" "email_routing_settings" {
  support_subaddress = true
  zone_id            = var.zone_id
}
