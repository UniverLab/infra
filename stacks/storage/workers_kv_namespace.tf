resource "cloudflare_workers_kv_namespace" "workers_kv_namespace" {
  account_id = var.account_id
  title      = "canopy-graphs-index"
}


resource "cloudflare_workers_kv_namespace" "workers_kv_namespace_2" {
  account_id = var.account_id
  title      = "announcements"
}


resource "cloudflare_workers_kv_namespace" "workers_kv_namespace_3" {
  account_id = var.account_id
  title      = "SESSION_REVOKED"
}


resource "cloudflare_workers_kv_namespace" "workers_kv_namespace_4" {
  account_id = var.account_id
  title      = "canopy-graphs-drafts"
}
