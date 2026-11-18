# infra

UniverLab's Cloudflare account as code (Terraform, Cloudflare provider v5).
Nothing in the account is created or changed by hand any more: a change is a
pull request here.

## Stacks

Each folder under `stacks/` is its own root module with its own state
(`univerlab-tfstate` R2 bucket, key `stacks/<name>.tfstate`), so a change plans
and applies only what it touches.

| Stack | What it holds |
|---|---|
| `dns` | univerlab.org DNS records and email routing rules |
| `storage` | R2 buckets and KV namespaces |
| `access` | Cloudflare Access applications and Turnstile widgets |
| `pages` | Pages projects `univerlab` and `quorum`: settings, bindings, plain variables |
| `workers` | Every Workers custom domain and route (get, install, graphs, announcements, remote). `wrangler.toml` files declare none |
| `atmosferas` | The `atmosferas` Pages project (personal project, kept apart) |

`shared/` holds the provider and variables every stack links to.

Outside Terraform on purpose:
- **Worker code and its bindings** (`wrangler.toml` in each repo) are uploaded
  by that repo's deploy workflow with wrangler. Domains and routes are not in
  any `wrangler.toml`: they are here, so a deploy never fights Terraform.
- **Secrets** (API keys, tokens, signing keys) never go in this repo or its
  state. They live in GitHub secrets and reach Workers and Pages through the
  deploy workflows (`wrangler secret` / `pages secret`).
- **The state bucket** `univerlab-tfstate` itself (bootstrap).

## Flow (trunk-based)

1. Branch from `main`, change the `.tf` files of the stack, open a PR.
2. **Plan** runs `fmt -check`, `init`, `validate` and `plan` for every stack
   the PR touches (all of them when `shared/` or the workflows change) and
   comments each plan on the PR. Read it: it is exactly what will change.
3. Merge to `main`.
4. Run **Apply** by hand (Actions → Apply → stack or `all`). It needs the
   `production` environment approval, plans again on `main` and applies.

## Credentials

| Name | Kind | Use |
|---|---|---|
| `CLOUDFLARE_API_TOKEN` | secret | Scoped API token "infra terraform": DNS, email routing, workers routes, zone read on univerlab.org; Access apps, Pages, R2, KV, Turnstile, Workers scripts on the account |
| `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY` | secret | R2 S3 credentials limited to the `univerlab-tfstate` bucket |
| `CLOUDFLARE_ACCOUNT_ID`, `R2_ENDPOINT` | variable | Account id and the R2 S3 endpoint |

Locally the same values live in `~/.config/univerlab/infra.env` (mode 600):

```sh
set -a; . ~/.config/univerlab/infra.env; set +a
export TF_VAR_account_id=$CLOUDFLARE_ACCOUNT_ID
cd stacks/dns
terraform init -backend-config="endpoints={s3=\"$R2_ENDPOINT\"}"
terraform plan
```

## Adopting existing resources

Everything was imported from the live account with `cf-terraforming` on
2026-11-18 and the import blocks were removed once applied. To adopt something else
later: `cf-terraforming generate` + `import --modern-import-block` for that
resource type, move the result into the right stack, and plan until it shows
only imports.
