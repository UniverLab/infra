resource "cloudflare_workers_custom_domain" "get_univerlab_org" {
  account_id       = var.account_id
  enabled          = true
  environment      = "production"
  hostname         = "get.univerlab.org"
  previews_enabled = false
  service          = "univerlab-get"
  zone_id          = var.zone_id
  zone_name        = "univerlab.org"
}


resource "cloudflare_workers_custom_domain" "install_univerlab_org" {
  account_id       = var.account_id
  enabled          = true
  environment      = "production"
  hostname         = "install.univerlab.org"
  previews_enabled = false
  service          = "univerlab-get"
  zone_id          = var.zone_id
  zone_name        = "univerlab.org"
}

resource "cloudflare_workers_custom_domain" "graphs_univerlab_org" {
  account_id       = var.account_id
  enabled          = true
  environment      = "production"
  hostname         = "graphs.univerlab.org"
  previews_enabled = false
  service          = "canopy-graphs"
  zone_id          = var.zone_id
  zone_name        = "univerlab.org"
}

resource "cloudflare_workers_custom_domain" "announcements_univerlab_org" {
  account_id       = var.account_id
  enabled          = true
  environment      = "production"
  hostname         = "announcements.univerlab.org"
  previews_enabled = false
  service          = "univerlab-announcements"
  zone_id          = var.zone_id
  zone_name        = "univerlab.org"
}

resource "cloudflare_workers_custom_domain" "booking_univerlab_org" {
  account_id       = var.account_id
  enabled          = true
  environment      = "production"
  hostname         = "booking.univerlab.org"
  previews_enabled = false
  service          = "univerlab-booking"
  zone_id          = var.zone_id
  zone_name        = "univerlab.org"
}
