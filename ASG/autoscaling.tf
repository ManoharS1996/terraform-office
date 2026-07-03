##############################################################
# Auto Scaling Group
##############################################################

resource "aws_autoscaling_group" "won_bills_asg" {

  name = "won-bills-asg"

  ##############################################################
  # Launch Template
  ##############################################################

  launch_template {

    id = aws_launch_template.won_bills_lt.id

    version = "$Latest"

  }

  ##############################################################
  # Network
  ##############################################################

  vpc_zone_identifier = [

    data.aws_subnet.public_subnet_1.id,

    data.aws_subnet.public_subnet_2.id

  ]

  ##############################################################
  # Capacity
  ##############################################################

  desired_capacity = var.desired_capacity

  min_size = var.min_size

  max_size = var.max_size

  ##############################################################
  # Health Check
  ##############################################################

  health_check_type = var.health_check_type

  health_check_grace_period = var.health_check_grace_period

  ##############################################################
  # Load Balancer
  ##############################################################

  target_group_arns = [

    data.aws_lb_target_group.existing.arn

  ]

  ##############################################################
  # Instance Refresh
  ##############################################################

  instance_refresh {

    strategy = "Rolling"

    preferences {

      min_healthy_percentage = 50

    }

  }

  ##############################################################
  # Metrics
  ##############################################################

  enabled_metrics = [

    "GroupDesiredCapacity",

    "GroupInServiceInstances",

    "GroupMinSize",

    "GroupMaxSize",

    "GroupTotalInstances"

  ]

  metrics_granularity = "1Minute"

  ##############################################################
  # Tags
  ##############################################################

  tag {

    key = "Name"

    value = "${var.project_name}-ASG"

    propagate_at_launch = true

  }

  tag {

    key = "Project"

    value = var.project_name

    propagate_at_launch = true

  }

  tag {

    key = "Application"

    value = var.application_name

    propagate_at_launch = true

  }

  tag {

    key = "Environment"

    value = var.environment

    propagate_at_launch = true

  }

  tag {

    key = "Owner"

    value = var.owner

    propagate_at_launch = true

  }

  tag {

    key = "ManagedBy"

    value = "Terraform"

    propagate_at_launch = true

  }

}