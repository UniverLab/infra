resource "cloudflare_r2_bucket" "univerlab_audits" {
  account_id = var.account_id
  name       = "univerlab-audits"
}


resource "cloudflare_r2_bucket" "univerlab_papers" {
  account_id = var.account_id
  name       = "univerlab-papers"
}

# Signed documents: originals, signed copies and their evidence (univerlab
# functions/api/sign-*.ts, bound to the site as SIGN_DOCS).
resource "cloudflare_r2_bucket" "univerlab_sign" {
  account_id = var.account_id
  name       = "univerlab-sign"
}
