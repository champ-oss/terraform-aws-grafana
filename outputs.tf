output "id" {
  description = "Grafana workspace ID."
  value       = var.enabled ? aws_grafana_workspace.this[0].id : ""
}

output "arn" {
  description = "Grafana workspace ARN."
  value       = var.enabled ? aws_grafana_workspace.this[0].arn : ""
}

output "endpoint" {
  description = "Grafana workspace URL."
  value       = var.enabled ? aws_grafana_workspace.this[0].endpoint : ""
}
