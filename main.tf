locals {
  tags = {
    git       = var.git
    cost      = "shared"
    creator   = "terraform"
    component = "grafana"
  }
}


