resource "cloudflare_pages_project" "atmosferas" {
  account_id        = var.account_id
  name              = "atmosferas"
  production_branch = "main"
  deployment_configs = {
    preview = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-10-14"
      env_vars                             = null
      fail_open                            = true
      usage_model                          = "standard"
    }
    production = {
      always_use_latest_compatibility_date = false
      build_image_major_version            = 3
      compatibility_date                   = "2026-10-14"
      env_vars                             = null
      fail_open                            = true
      usage_model                          = "standard"
    }
  }
}
