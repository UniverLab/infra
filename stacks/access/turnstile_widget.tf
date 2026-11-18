resource "cloudflare_turnstile_widget" "booking" {
  account_id      = var.account_id
  bot_fight_mode  = false
  clearance_level = "no_clearance"
  domains         = ["booking.univerlab.org", "univerlab.org"]
  ephemeral_id    = false
  mode            = "managed"
  name            = "booking"
  offlabel        = false
  region          = "world"
}

# Renamed from "agenda" on 2026-11-18; same widget, same site key.
moved {
  from = cloudflare_turnstile_widget.agenda
  to   = cloudflare_turnstile_widget.booking
}
