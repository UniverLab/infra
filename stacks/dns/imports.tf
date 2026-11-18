# Adopted from the live account with cf-terraforming on 2026-11-18.
# Remove once the first apply has recorded every resource in state.

import {
  to = cloudflare_dns_record.remote_aaaa
  id = "${var.zone_id}/f9c179b102ae1c6a34be01570f1ae9e5"
}

import {
  to = cloudflare_dns_record.em1128756_cname
  id = "${var.zone_id}/a0264901a31fc0c713149c4b9096b869"
}

import {
  to = cloudflare_dns_record.link_cname
  id = "${var.zone_id}/2d2eb03f128da7923740b08e25741ee7"
}

import {
  to = cloudflare_dns_record.papers_cname
  id = "${var.zone_id}/d272715bdf97aca6ed81c439d7274947"
}

import {
  to = cloudflare_dns_record.quorum_cname
  id = "${var.zone_id}/75f8e8df83f0ad24a53ecdeb227dc304"
}

import {
  to = cloudflare_dns_record.rsend_cname
  id = "${var.zone_id}/8b5871abee7a25843757a753a755b9a7"
}

import {
  to = cloudflare_dns_record.s1128756_domainkey_cname
  id = "${var.zone_id}/65d278bbb9b027602bb5d6b436aebece"
}

import {
  to = cloudflare_dns_record.send_cname
  id = "${var.zone_id}/4069ffbd1a89e471d2a1695eefd5b5b8"
}

import {
  to = cloudflare_dns_record.apex_cname
  id = "${var.zone_id}/6eb9b0bdab7cdbe587534af0fc3ef652"
}

import {
  to = cloudflare_dns_record.apex_mx
  id = "${var.zone_id}/b1596d3c8d74b479d9374e45476f01b7"
}

import {
  to = cloudflare_dns_record.apex_mx_2
  id = "${var.zone_id}/6b2d65328a078c14f356e57e5c541a34"
}

import {
  to = cloudflare_dns_record.apex_mx_3
  id = "${var.zone_id}/2607a5d32c5cd7b2daaa0dd020bf1a0f"
}

import {
  to = cloudflare_dns_record.index_agents_svcb
  id = "${var.zone_id}/fe8c4e8caed543a15e35a4542660b684"
}

import {
  to = cloudflare_dns_record.mcp_agents_svcb
  id = "${var.zone_id}/10fa538c6d4b94cdd6b9948349d9e3ce"
}

import {
  to = cloudflare_dns_record.cf2024_1_domainkey_txt
  id = "${var.zone_id}/edc4f607266f93150cdf15c193cbfe93"
}

import {
  to = cloudflare_dns_record.dmarc_txt
  id = "${var.zone_id}/3d5a4949ded15d3819a12023dd66e46d"
}

import {
  to = cloudflare_dns_record.resend_domainkey_txt
  id = "${var.zone_id}/4a484f651ce136b198e347bce8ffa6f4"
}

import {
  to = cloudflare_dns_record.apex_txt
  id = "${var.zone_id}/43945e173652fce0ed25ffbace0ccf0d"
}

import {
  to = cloudflare_dns_record.apex_txt_2
  id = "${var.zone_id}/fd85211e612ac08d86197f4358ee9573"
}

import {
  to = cloudflare_dns_record.announcements_aaaa
  id = "${var.zone_id}/24487cd05a04cb2e69ab81c7a716e022"
}

import {
  to = cloudflare_dns_record.get_aaaa
  id = "${var.zone_id}/cd6fab2394de485891f5ed07f26a081f"
}

import {
  to = cloudflare_dns_record.graphs_aaaa
  id = "${var.zone_id}/df3b04a2dcd57d13bf44f418a4815f22"
}

import {
  to = cloudflare_dns_record.install_aaaa
  id = "${var.zone_id}/a8b8ab0acfc9b89f8b2f8ea093ccaf46"
}

import {
  to = cloudflare_email_routing_rule.hola_to_the_founder_inbox
  id = "${var.zone_id}/b744ea3f5807460a93fe7f96d828cd68"
}

import {
  to = cloudflare_email_routing_settings.email_routing_settings
  id = var.zone_id
}
