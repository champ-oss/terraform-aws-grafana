resource "aws_iam_role" "this" {
  count = var.enabled ? 1 : 0
  name  = "${var.git}-grafana"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = "sts:AssumeRole"
      Principal = {
        Service = "grafana.amazonaws.com"
      }
    }]
  })
}