# Adopted from the live account with cf-terraforming on 2026-11-18.
# Remove once the first apply has recorded every resource in state.

import {
  to = cloudflare_workers_custom_domain.get_univerlab_org
  id = "${var.account_id}/e6b1affe9bea7093d6487982d7aa00648f6ee101"
}

import {
  to = cloudflare_workers_custom_domain.install_univerlab_org
  id = "${var.account_id}/0dc8fd3c01cc3eb83835713e426ecdd46dac1e91"
}

import {
  to = cloudflare_workers_custom_domain.graphs_univerlab_org
  id = "${var.account_id}/e2fa3d06fddf8705f5883097c6c36a3fe7b96322"
}

import {
  to = cloudflare_workers_custom_domain.announcements_univerlab_org
  id = "${var.account_id}/212d8e6a2848cfa5e7b871c36449c7a4dd90cd32"
}

import {
  to = cloudflare_workers_route.remote_univerlab_org
  id = "${var.zone_id}/9af4b93aaaab426a8b05260ec49e1324"
}
