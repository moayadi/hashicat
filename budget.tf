module "workspace_budget" {
  source  = "app.terraform.io/moayadi/workspace-budget/aws"
  version = "0.2.1"

  workspace_name    = var.TFC_WORKSPACE_NAME
  limit             = var.Limit
  time_period_start = var.time_period_start
  subscriber_email = var.Notification
}


