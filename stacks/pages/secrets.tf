variable "sign_owner_emails" {
  description = "Comma-separated addresses allowed to run the signing console."
  type        = string
  default     = "jheison.mb@gmail.com,hola@univerlab.org"
}

variable "resend_api_key" {
  description = "Resend API key for the site's mail (GitHub secret RESEND_API_KEY, passed as TF_VAR_resend_api_key)."
  type        = string
  sensitive   = true
}
