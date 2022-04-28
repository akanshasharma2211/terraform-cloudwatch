provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
} 

data "aws_instances" "test" {
filter {
name = "vpc-id"
values = ["vpc-7536fc1e"]
}
instance_state_names = ["running", "stopped"]
}

output "instances" {
value = "${data.aws_instances.test.instance_tags}"
}


resource "aws_cloudwatch_metric_alarm" "instance_statuscheck" {
  for_each = "${toset(data.aws_instances.test.ids)}"
  alarm_name          = each.key
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "2"
    metric_name         = "StatusCheckFailed"
    namespace           = "AWS/EC2"
    period              = "300"
    statistic           = "Maximum"
    threshold           = "1.0"
    alarm_description   = "EC2 Status Check"

    dimensions          = { InstanceId = each.key }
}