module "workspace_budget" {
  source  = "app.terraform.io/moayadi/workspace-budget/aws"
  version = "0.1.4"

  limit             = var.Limit
  time_period_start = var.time_period_start
  subscriber_email = "admin@boundarynetworks.com.au"
}

