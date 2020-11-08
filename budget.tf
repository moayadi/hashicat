module "workspace_budget" {
  source  = "app.terraform.io/moayadi/workspace-budget/aws"
  version = "0.2.0"

  limit             = var.Limit
  time_period_start = var.time_period_start
  subscriber_email = var.Notification
}

