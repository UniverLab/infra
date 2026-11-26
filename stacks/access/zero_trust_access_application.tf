resource "cloudflare_zero_trust_access_application" "univerlab_audits" {
  account_id                 = var.account_id
  allowed_idps               = ["e49a09b7-b159-41ed-ac4d-c41a8e84dd31"]
  app_launcher_visible       = false
  auto_redirect_to_identity  = true
  domain                     = "univerlab.org/audits"
  enable_binding_cookie      = false
  http_only_cookie_attribute = true
  name                       = "UniverLab private pages"
  options_preflight_bypass   = false
  session_duration           = "24h"
  type                       = "self_hosted"
  # Private audits and the owner's signing console share one application, so
  # the site checks a single AUD; each page then checks its own allowlist.
  destinations = [
    { type = "public", uri = "univerlab.org/audits" },
    { type = "public", uri = "univerlab.org/sign/owner" },
    { type = "public", uri = "univerlab.org/es/sign/owner" },
    { type = "public", uri = "univerlab.org/api/sign-request" },
    # The owner's admin room and its APIs (univerlab FEAT-128).
    { type = "public", uri = "univerlab.org/admin" },
    { type = "public", uri = "univerlab.org/es/admin" },
    { type = "public", uri = "univerlab.org/api/admin-audits" },
    { type = "public", uri = "univerlab.org/api/admin-visibility" },
    { type = "public", uri = "univerlab.org/api/admin-remove" },
    { type = "public", uri = "univerlab.org/api/admin-analytics" },
    # The signer's side: the link page, the PDF and the signature need the
    # signer's verified email, which the site compares with the request.
    { type = "public", uri = "univerlab.org/sign/*" },
    { type = "public", uri = "univerlab.org/es/sign/*" },
    { type = "public", uri = "univerlab.org/api/sign-file" },
    { type = "public", uri = "univerlab.org/api/sign-complete" },
  ]
  # App-scoped policy "Any verified email; the site checks each audit's list":
  # Access lets any verified email in, the site checks each audit's own list.
  policies = [{
    id         = "23ad51ba-11ef-460e-a506-dbab9fe887db"
    precedence = 1
  }]
}
