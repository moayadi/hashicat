module "lambda-scheduler-stop" {
  source  = "app.terraform.io/moayadi/lambda-scheduler-stop-start/aws"
  version = "2.10.0"
  name                           = "${var.TFC_WORKSPACE_NAME}_ec2_stop"
  cloudwatch_schedule_expression = "cron(27 07 * * ? *)"
  schedule_action                = "stop"
  ec2_schedule                   = "true"
  rds_schedule                   = "false"
  autoscaling_schedule           = "false"
  resources_tag                  = {
    key   = "tostop"
    value = "true"
  }
}


module "lambda-scheduler-start" {
  source  = "app.terraform.io/moayadi/lambda-scheduler-stop-start/aws"
  version = "2.10.0"
  name                           = "${var.TFC_WORKSPACE_NAME}_ec2_start"
  cloudwatch_schedule_expression = "cron(30 07 * * ? *)"
  schedule_action                = "start"
  ec2_schedule                   = "true"
  rds_schedule                   = "false"
  autoscaling_schedule           = "false"
  resources_tag                  = {
    key   = "tostop"
    value = "true"
  }
}