##############################################################
# Project
##############################################################

output "project_name" {

  description = "Project Name"

  value = var.project_name

}

output "application_name" {

  description = "Application Name"

  value = var.application_name

}

##############################################################
# Launch Template
##############################################################

output "launch_template_id" {

  description = "Launch Template ID"

  value = aws_launch_template.won_bills_lt.id

}

output "launch_template_name" {

  description = "Launch Template Name"

  value = aws_launch_template.won_bills_lt.name

}

output "launch_template_latest_version" {

  description = "Latest Launch Template Version"

  value = aws_launch_template.won_bills_lt.latest_version

}

##############################################################
# Auto Scaling Group
##############################################################

output "autoscaling_group_name" {

  description = "Auto Scaling Group Name"

  value = aws_autoscaling_group.won_bills_asg.name

}

output "autoscaling_group_arn" {

  description = "Auto Scaling Group ARN"

  value = aws_autoscaling_group.won_bills_asg.arn

}

output "desired_capacity" {

  description = "Desired Capacity"

  value = aws_autoscaling_group.won_bills_asg.desired_capacity

}

output "minimum_capacity" {

  description = "Minimum Capacity"

  value = aws_autoscaling_group.won_bills_asg.min_size

}

output "maximum_capacity" {

  description = "Maximum Capacity"

  value = aws_autoscaling_group.won_bills_asg.max_size

}

##############################################################
# Existing Resources
##############################################################

output "vpc_id" {

  description = "Existing VPC"

  value = data.aws_vpc.existing.id

}

output "public_subnet_1" {

  description = "Public Subnet 1"

  value = data.aws_subnet.public_subnet_1.id

}

output "public_subnet_2" {

  description = "Public Subnet 2"

  value = data.aws_subnet.public_subnet_2.id

}

output "security_group_id" {

  description = "Security Group"

  value = data.aws_security_group.web_sg.id

}

output "target_group_arn" {

  description = "Target Group ARN"

  value = data.aws_lb_target_group.existing.arn

}

##############################################################
# Scaling Policies
##############################################################

output "scale_out_policy_arn" {

  description = "Scale Out Policy ARN"

  value = aws_autoscaling_policy.scale_out.arn

}

output "scale_in_policy_arn" {

  description = "Scale In Policy ARN"

  value = aws_autoscaling_policy.scale_in.arn

}

##############################################################
# CloudWatch
##############################################################

output "high_cpu_alarm" {

  description = "High CPU Alarm"

  value = aws_cloudwatch_metric_alarm.high_cpu.alarm_name

}

output "low_cpu_alarm" {

  description = "Low CPU Alarm"

  value = aws_cloudwatch_metric_alarm.low_cpu.alarm_name

}