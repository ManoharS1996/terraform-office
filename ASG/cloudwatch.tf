##############################################################
# CloudWatch Alarm - High CPU
##############################################################

resource "aws_cloudwatch_metric_alarm" "high_cpu" {

  alarm_name = "won-bills-high-cpu"

  alarm_description = "Scale Out when CPU exceeds 70%"

  comparison_operator = "GreaterThanOrEqualToThreshold"

  evaluation_periods = 2

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = 120

  statistic = "Average"

  threshold = 70

  dimensions = {

    AutoScalingGroupName = aws_autoscaling_group.won_bills_asg.name

  }

  alarm_actions = [

    aws_autoscaling_policy.scale_out.arn

  ]

}

##############################################################
# CloudWatch Alarm - Low CPU
##############################################################

resource "aws_cloudwatch_metric_alarm" "low_cpu" {

  alarm_name = "won-bills-low-cpu"

  alarm_description = "Scale In when CPU is below 20%"

  comparison_operator = "LessThanOrEqualToThreshold"

  evaluation_periods = 2

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = 120

  statistic = "Average"

  threshold = 20

  dimensions = {

    AutoScalingGroupName = aws_autoscaling_group.won_bills_asg.name

  }

  alarm_actions = [

    aws_autoscaling_policy.scale_in.arn

  ]

}