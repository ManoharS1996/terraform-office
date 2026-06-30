##############################################################
# Data Sources
##############################################################

data "aws_availability_zones" "available" {
  state = "available"
}

##############################################################
# VPC
##############################################################

resource "aws_vpc" "wonbills_vpc" {

  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-VPC"
  }

}

##############################################################
# Public Subnet
##############################################################

resource "aws_subnet" "public_subnet" {

  vpc_id                  = aws_vpc.wonbills_vpc.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-Public-Subnet"
  }

}

##############################################################
# Internet Gateway
##############################################################

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.wonbills_vpc.id

  tags = {
    Name = "${var.project_name}-IGW"
  }

}

##############################################################
# Public Route Table
##############################################################

resource "aws_route_table" "public_rt" {

  vpc_id = aws_vpc.wonbills_vpc.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.igw.id

  }

  tags = {

    Name = "${var.project_name}-Public-RT"

  }

}

##############################################################
# Route Table Association
##############################################################

resource "aws_route_table_association" "public_association" {

  subnet_id = aws_subnet.public_subnet.id

  route_table_id = aws_route_table.public_rt.id

}

##############################################################
# Security Group
##############################################################

resource "aws_security_group" "wonbills_sg" {

  name = "won-bills-sg"

  description = "Security Group for WON Bills"

  vpc_id = aws_vpc.wonbills_vpc.id

  dynamic "ingress" {

    for_each = var.allowed_ports

    content {

      description = "Port ${ingress.value}"

      from_port = ingress.value

      to_port = ingress.value

      protocol = "tcp"

      cidr_blocks = ["0.0.0.0/0"]

    }

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "${var.project_name}-SG"

  }

}