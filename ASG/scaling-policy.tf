##############################################################
# Scale Out Policy
##############################################################

resource "aws_autoscaling_policy" "scale_out" {

  name = "won-bills-scale-out"

  autoscaling_group_name = aws_autoscaling_group.won_bills_asg.name

  adjustment_type = "ChangeInCapacity"

  scaling_adjustment = 1

  cooldown = 300

}

##############################################################
# Scale In Policy
##############################################################

resource "aws_autoscaling_policy" "scale_in" {

  name = "won-bills-scale-in"

  autoscaling_group_name = aws_autoscaling_group.won_bills_asg.name

  adjustment_type = "ChangeInCapacity"

  scaling_adjustment = -1

  cooldown = 300

}