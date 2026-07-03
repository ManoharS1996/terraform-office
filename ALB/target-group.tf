##############################################################
# Application Load Balancer Target Group
##############################################################

resource "aws_lb_target_group" "won_bills_tg" {

  name = "won-bills-tg"

  port = 80

  protocol = "HTTP"

  target_type = "instance"

  vpc_id = data.aws_vpc.existing.id

  ##############################################################
  # Health Check
  ##############################################################

  health_check {

    enabled = true

    protocol = "HTTP"

    path = "/"

    matcher = "200"

    interval = 30

    timeout = 5

    healthy_threshold = 3

    unhealthy_threshold = 2

  }

  tags = {

    Name = "won-bills-target-group"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

  }

}

##############################################################
# Register Existing EC2 Instance
##############################################################

resource "aws_lb_target_group_attachment" "won_bills_ec2" {

  target_group_arn = aws_lb_target_group.won_bills_tg.arn

  target_id = var.instance_id

  port = 80

}