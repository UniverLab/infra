# Adopted from the live account with cf-terraforming on 2026-11-18.
# Remove once the first apply has recorded every resource in state.

import {
  to = cloudflare_pages_project.univerlab
  id = "${var.account_id}/univerlab"
}

import {
  to = cloudflare_pages_project.quorum
  id = "${var.account_id}/quorum"
}

