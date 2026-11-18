resource "cloudflare_dns_record" "remote_aaaa" {
  comment  = "canopy-remote Worker route"
  content  = "100::"
  name     = "remote.univerlab.org"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "em1128756_cname" {
  content = "return.smtp2go.net"
  name    = "em1128756.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "link_cname" {
  content = "track.smtp2go.net"
  name    = "link.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "papers_cname" {
  content = "public.r2.dev"
  name    = "papers.univerlab.org"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "quorum_cname" {
  content = "quorum-1sw.pages.dev"
  name    = "quorum.univerlab.org"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "rsend_cname" {
  content = "rsend-sae1.forge.rmta.net"
  name    = "rsend.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "s1128756_domainkey_cname" {
  content = "dkim.smtp2go.net"
  name    = "s1128756._domainkey.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "send_cname" {
  content = "send.forge.rmta.net"
  name    = "send.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "apex_cname" {
  content = "univerlab.pages.dev"
  name    = "univerlab.org"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = var.zone_id
  settings = {
    flatten_cname = false
  }
}


resource "cloudflare_dns_record" "apex_mx" {
  content  = "route3.mx.cloudflare.net"
  name     = "univerlab.org"
  priority = 43
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "apex_mx_2" {
  content  = "route2.mx.cloudflare.net"
  name     = "univerlab.org"
  priority = 71
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "apex_mx_3" {
  content  = "route1.mx.cloudflare.net"
  name     = "univerlab.org"
  priority = 68
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "index_agents_svcb" {
  name    = "_index._agents.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "SVCB"
  zone_id = var.zone_id
  data = {
    priority = 1
    target   = "univerlab.org."
    value    = "alpn=\"h2\" port=\"443\""
  }
  settings = {}
}


resource "cloudflare_dns_record" "mcp_agents_svcb" {
  name    = "_mcp._agents.univerlab.org"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "SVCB"
  zone_id = var.zone_id
  data = {
    priority = 1
    target   = "univerlab.org."
    value    = "alpn=\"mcp\" port=\"443\""
  }
  settings = {}
}


resource "cloudflare_dns_record" "cf2024_1_domainkey_txt" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.univerlab.org"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "dmarc_txt" {
  comment  = "DMARC monitor-only; raise to quarantine once mail flows are confirmed"
  content  = "\"v=DMARC1; p=none\""
  name     = "_dmarc.univerlab.org"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "resend_domainkey_txt" {
  content  = "\"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDAtHiCd9IWTXoO84XSQINr4zJsXogqdHOzW2zSf5VrCUBcc6CYFR5xjAt+YSaivaq6Z8eXDveaRH/HwonbtSVct4pfh8O0a1pkN51VNeNGvZAsL5jdubSwIGS5FAKGow/3GpByv6dfmUwECSz9JL+6zEejxY5w7uGh/Z7oztoZowIDAQAB\""
  name     = "resend._domainkey.univerlab.org"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "apex_txt" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net include:spf.smtp2go.com ~all\""
  name     = "univerlab.org"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "apex_txt_2" {
  content  = "\"google-site-verification=3WCTEKU4AvmpbDDSlhC9TeKrQCNSWLFrV-nB8dk0lt4\""
  name     = "univerlab.org"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "announcements_aaaa" {
  content  = "100::"
  name     = "announcements.univerlab.org"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "get_aaaa" {
  content  = "100::"
  name     = "get.univerlab.org"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "graphs_aaaa" {
  content  = "100::"
  name     = "graphs.univerlab.org"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = var.zone_id
  settings = {}
}


resource "cloudflare_dns_record" "install_aaaa" {
  content  = "100::"
  name     = "install.univerlab.org"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = var.zone_id
  settings = {}
}
