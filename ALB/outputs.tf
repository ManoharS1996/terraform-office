##############################################################
# ALB Outputs
##############################################################

output "alb_id" {

  value = aws_lb.won_bills_alb.id

}

output "alb_arn" {

  value = aws_lb.won_bills_alb.arn

}

output "alb_dns_name" {

  value = aws_lb.won_bills_alb.dns_name

}

output "alb_zone_id" {

  value = aws_lb.won_bills_alb.zone_id

}

output "alb_security_group" {

  value = aws_security_group.alb_sg.id

}
##############################################################
# Target Group Outputs
##############################################################

output "target_group_id" {

  description = "Target Group ID"

  value = aws_lb_target_group.won_bills_tg.id

}

output "target_group_arn" {

  description = "Target Group ARN"

  value = aws_lb_target_group.won_bills_tg.arn

}

output "registered_instance" {

  description = "Registered EC2 Instance"

  value = var.instance_id

}