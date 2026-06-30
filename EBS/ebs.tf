##############################################################
# EBS Volume
##############################################################

resource "aws_ebs_volume" "won_bills_ebs" {

  availability_zone = var.availability_zone

  size = var.volume_size

  type = "gp3"

  encrypted = true

  iops = var.iops

  throughput = var.throughput

  tags = {

    Name = "won-bills-ebs"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

    Backup = "Daily"

    Snapshot = "Enabled"

    ManagedBy = "Terraform"

  }

}

##############################################################
# Attach Volume
##############################################################

resource "aws_volume_attachment" "won_bills_attachment" {

  device_name = var.device_name

  volume_id = aws_ebs_volume.won_bills_ebs.id

  instance_id = var.instance_id

  force_detach = true

}

##############################################################
# Snapshot
##############################################################

resource "aws_ebs_snapshot" "won_bills_snapshot" {

  volume_id = aws_ebs_volume.won_bills_ebs.id

  tags = {

    Name = "won-bills-snapshot"

    Backup = "Daily"

    Retention = "30 Days"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

  }

}