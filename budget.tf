module "workspace_budget" {
  source  = "app.terraform.io/moayadi/workspace-budget/aws"
  version = "0.1.2"

  workspace_name    = var.TFC_WORKSPACE_NAME
  limit             = var.Limit
  time_period_start = var.time_period_start
  filter            = var.filter
  budget            = {
    name              = "${var.TFC_WORKSPACE_NAME}-monthly-budget",
    budget_type       = "COST",
    time_unit         = "MONTHLY",
    limit_unit  = "USD"
  }
  notification      = {
    comparison_operator        = "GREATER_THAN",
    threshold                  = 80,
    threshold_type             = "PERCENTAGE",
    notification_type          = "FORECASTED",
    subscriber_email_addresses = [var.Notification]
  }
}
