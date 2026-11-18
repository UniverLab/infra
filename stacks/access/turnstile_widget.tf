resource "cloudflare_turnstile_widget" "agenda" {
  account_id      = var.account_id
  bot_fight_mode  = false
  clearance_level = "no_clearance"
  domains         = ["agenda.univerlab.org", "univerlab.org"]
  ephemeral_id    = false
  mode            = "managed"
  name            = "agenda"
  offlabel        = false
  region          = "world"
}
