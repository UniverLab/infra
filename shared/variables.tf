variable "account_id" {
  description = "Cloudflare account id (repository variable CLOUDFLARE_ACCOUNT_ID)."
  type        = string
}

variable "zone_id" {
  description = "Zone id of univerlab.org."
  type        = string
  default     = "b4de52ceccd9f9e11113f9fcb20bba0b"
}
