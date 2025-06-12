variable "VAULT_TOKEN" {
  type        = string
  description = "Vault token for authentication"
}

variable "gitlab_token" {
  type        = string
  description = "GitLab CI token for remote backend"
  sensitive   = true
}
