resource "cloudflare_r2_bucket" "univerlab_audits" {
  account_id = var.account_id
  name       = "univerlab-audits"
}


resource "cloudflare_r2_bucket" "univerlab_papers" {
  account_id = var.account_id
  name       = "univerlab-papers"
}
