resource "aws_grafana_workspace" "this" {
  count                    = var.enabled ? 1 : 0
  name                     = var.git
  account_access_type      = "CURRENT_ACCOUNT"
  authentication_providers = var.authentication_providers
  permission_type          = var.permission_type
  grafana_version          = var.grafana_version
  role_arn                 = aws_iam_role.this[0].arn
  tags                     = merge(local.tags, var.tags)
}