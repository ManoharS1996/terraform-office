##############################################################
# Latest Ubuntu 24.04 LTS AMI
##############################################################

data "aws_ami" "ubuntu" {

  most_recent = true

  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

##############################################################
# EC2 Instance
##############################################################

resource "aws_instance" "wonbills_server" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  ##############################################################
  # Existing Network
  ##############################################################

  subnet_id = data.aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    data.aws_security_group.web_sg.id
  ]

  associate_public_ip_address = true

  ##############################################################
  # Key Pair
  ##############################################################

  key_name = aws_key_pair.wonbills_keypair.key_name

  ##############################################################
  # User Data
  ##############################################################

  user_data = file("${path.module}/userdata.sh")

  ##############################################################
  # Root Volume
  ##############################################################

  root_block_device {

    volume_size           = var.volume_size
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true

  }

  ##############################################################
  # Tags
  ##############################################################

  tags = {

    Name        = "${var.project_name}-Server"
    Project     = var.project_name
    Application = var.application_name
    Environment = var.environment
    Owner       = var.owner

  }

  depends_on = [

    aws_key_pair.wonbills_keypair

  ]

}

##############################################################
# Additional EBS Volume
##############################################################

resource "aws_ebs_volume" "extra_disk" {

  availability_zone = aws_instance.wonbills_server.availability_zone

  size = var.extra_volume_size

  type = "gp3"

  encrypted = true

  tags = {

    Name = "${var.project_name}-Extra-EBS"

  }

}

##############################################################
# Attach EBS Volume
##############################################################

resource "aws_volume_attachment" "extra_disk_attach" {

  device_name = "/dev/sdf"

  volume_id = aws_ebs_volume.extra_disk.id

  instance_id = aws_instance.wonbills_server.id

  force_detach = true

}

##############################################################
# Elastic IP
##############################################################

resource "aws_eip" "wonbills_eip" {

  domain = "vpc"

  tags = {

    Name = "${var.project_name}-EIP"

  }

}

##############################################################
# Associate Elastic IP
##############################################################

resource "aws_eip_association" "eip_association" {

  allocation_id = aws_eip.wonbills_eip.id

  instance_id = aws_instance.wonbills_server.id

}