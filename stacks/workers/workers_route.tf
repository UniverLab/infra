resource "cloudflare_workers_route" "remote_univerlab_org" {
  pattern = "remote.univerlab.org/*"
  script  = "canopy-remote"
  zone_id = var.zone_id
}
