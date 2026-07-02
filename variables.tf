variable "authentication_providers" {
  description = "The authentication providers for the workspace. Valid values are AWS_SSO, AWS_IAM, and SAML."
  type        = list(string)
  default     = ["AWS_SSO"]
}

variable "grafana_version" {
  description = "The version of Grafana supported by the workspace. Valid values are 8 and 9."
  type        = number
  default     = 12.4
}

variable "git" {
  description = "The name of the workspace."
  type        = string
  default     = "terraform-aws-grafana"
}

variable "permission_type" {
  description = "The permission type of the workspace"
  type        = string
  default     = "SERVICE_MANAGED"
}


variable "tags" {
  description = "Additional tags to be applied to all resources"
  default     = {}
  type        = map(string)
}

variable "enabled" {
  description = "Enable or disable the creation of the Grafana workspace."
  type        = bool
  default     = true
}

