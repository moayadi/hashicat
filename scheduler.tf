module "lambda-scheduler-stop" {
  source  = "app.terraform.io/moayadi/lambda-scheduler-stop-start/aws"
  version = "2.10.1"
  name                           = "${var.TFC_WORKSPACE_NAME}_ec2_stop"
  cloudwatch_schedule_expression = "cron(00 20 * * ? *)"
  schedule_action                = "stop"
  ec2_schedule                   = "true"
  rds_schedule                   = "false"
  autoscaling_schedule           = "false"
  resources_tag                  = {
    key   = "Environment"
    value = "dev"
  }
  tags = local.common_tags
}