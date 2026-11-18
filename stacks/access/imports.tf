# Adopted from the live account with cf-terraforming on 2026-11-18.
# Remove once the first apply has recorded every resource in state.

import {
  to = cloudflare_turnstile_widget.agenda
  id = "${var.account_id}/0x4AAAAAAF_6zGz7DaXnJFZp"
}

import {
  to = cloudflare_zero_trust_access_application.univerlab_audits
  id = "accounts/${var.account_id}/e5d3da6c-646c-4671-a46d-5ca8554e7692"
}
