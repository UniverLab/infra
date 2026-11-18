# Adopted from the live account with cf-terraforming on 2026-11-18.
# Remove once the first apply has recorded every resource in state.

import {
  to = cloudflare_r2_bucket.univerlab_audits
  id = "${var.account_id}/univerlab-audits/default"
}

import {
  to = cloudflare_r2_bucket.univerlab_papers
  id = "${var.account_id}/univerlab-papers/default"
}

import {
  to = cloudflare_workers_kv_namespace.workers_kv_namespace
  id = "${var.account_id}/14f08f7af605474585288b2169d80d9b"
}

import {
  to = cloudflare_workers_kv_namespace.workers_kv_namespace_2
  id = "${var.account_id}/6456e427df724870ba557449758fe47d"
}

import {
  to = cloudflare_workers_kv_namespace.workers_kv_namespace_3
  id = "${var.account_id}/7d0227b847184c6a9dbcd3ca71019753"
}

import {
  to = cloudflare_workers_kv_namespace.workers_kv_namespace_4
  id = "${var.account_id}/e2fde572c17a4abba6b55645f7fc969a"
}
