resource "cloudflare_email_routing_rule" "hola_to_the_founder_inbox" {
  enabled  = true
  name     = "hola@ to the founder inbox"
  priority = 0
  source   = "api"
  zone_id  = var.zone_id
  actions = [{
    type  = "forward"
    value = ["jheison.mb@gmail.com"]
  }]
  matchers = [{
    field = "to"
    type  = "literal"
    value = "hola@univerlab.org"
  }]
}
