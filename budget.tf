module "workspace_budget" {
  source  = "app.terraform.io/moayadi/workspace-budget/aws"
  version = "0.1.5"

  TFC_WORKSPACE_NAME = var.TFC_WORKSPACE_NAME
  limit             = var.Limit
  time_period_start = var.time_period_start
  subscriber_email = "admin@boundarynetworks.com.au"
}

