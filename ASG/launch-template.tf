##############################################################
# Launch Template
##############################################################

resource "aws_launch_template" "won_bills_lt" {

  name_prefix = "won-bills-lt-"

  description = "Launch Template for WON Bills Auto Scaling Group"

  image_id = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids = [
    data.aws_security_group.web_sg.id
  ]

  ##############################################################
  # Root EBS Volume
  ##############################################################

  block_device_mappings {

    device_name = "/dev/sda1"

    ebs {

      volume_size = var.root_volume_size

      volume_type = "gp3"

      encrypted = true

      delete_on_termination = true

    }

  }

  ##############################################################
  # Monitoring
  ##############################################################

  monitoring {

    enabled = true

  }

  ##############################################################
  # User Data
  ##############################################################

  user_data = base64encode(file("${path.module}/userdata.sh"))

  ##############################################################
  # Instance Metadata Service (IMDSv2)
  ##############################################################

  metadata_options {

    http_endpoint = "enabled"

    http_tokens = "required"

    http_put_response_hop_limit = 2

  }

  ##############################################################
  # Tags
  ##############################################################

  tag_specifications {

    resource_type = "instance"

    tags = {

      Name = "${var.project_name}-ASG-Server"

      Project = var.project_name

      Application = var.application_name

      Environment = var.environment

      Owner = var.owner

      ManagedBy = "Terraform"

    }

  }

  ##############################################################
  # Launch Template Tags
  ##############################################################

  tags = {

    Name = "${var.project_name}-Launch-Template"

    Project = var.project_name

    Environment = var.environment

    ManagedBy = "Terraform"

  }

}