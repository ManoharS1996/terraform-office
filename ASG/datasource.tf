##############################################################
# Existing VPC
##############################################################

data "aws_vpc" "existing" {

  id = var.vpc_id

}

##############################################################
# Existing Public Subnet 1
##############################################################

data "aws_subnet" "public_subnet_1" {

  id = var.public_subnet_1

}

##############################################################
# Existing Public Subnet 2
##############################################################

data "aws_subnet" "public_subnet_2" {

  id = var.public_subnet_2

}

##############################################################
# Existing Security Group
##############################################################

data "aws_security_group" "web_sg" {

  id = var.security_group_id

}

##############################################################
# Existing Target Group
##############################################################

data "aws_lb_target_group" "existing" {

  arn = var.target_group_arn

}

##############################################################
# Ubuntu AMI
##############################################################

data "aws_ami" "ubuntu" {

  most_recent = true

  owners = ["099720109477"]

  filter {

    name = "name"

    values = [
      "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"
    ]

  }

  filter {

    name = "virtualization-type"

    values = ["hvm"]

  }

}