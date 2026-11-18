resource "cloudflare_pages_project" "univerlab" {
  account_id        = var.account_id
  name              = "univerlab"
  production_branch = "main"
  deployment_configs = {
    preview = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-07-11"
      env_vars                             = null
      fail_open                            = true
      usage_model                          = "standard"
    }
    production = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-07-11"
      env_vars = {
        ACCESS_AUD = {
          type  = "plain_text"
          value = "62f4259e71259af3dbb124fbb67df4f62e9fd339dd9fdef4becb996ad9e01990"
        }
        ACCESS_TEAM_DOMAIN = {
          type  = "plain_text"
          value = "univerlab.cloudflareaccess.com"
        }
        # Who may open the signing console and create requests.
        SIGN_OWNER_EMAILS = {
          type  = "plain_text"
          value = var.sign_owner_emails
        }
        # Sends the signing invitations and receipts (firma@univerlab.org).
        RESEND_API_KEY = {
          type  = "secret_text"
          value = var.resend_api_key
        }
      }
      fail_open = true
      r2_buckets = {
        AUDITS = {
          name = "univerlab-audits"
        }
        SIGN_DOCS = {
          name = "univerlab-sign"
        }
      }
      usage_model = "standard"
    }
  }
}


resource "cloudflare_pages_project" "quorum" {
  account_id        = var.account_id
  name              = "quorum"
  production_branch = "main"
  build_config = {
    build_command       = "npm run build"
    destination_dir     = "dist"
    root_dir            = ""
    web_analytics_tag   = null
    web_analytics_token = null
  }
  deployment_configs = {
    preview = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-07-10"
      env_vars                             = null
      fail_open                            = true
      usage_model                          = "standard"
    }
    production = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-07-10"
      env_vars                             = null
      fail_open                            = true
      usage_model                          = "standard"
    }
  }
}
