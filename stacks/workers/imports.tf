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

