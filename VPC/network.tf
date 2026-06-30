##############################################################
# Create VPC
##############################################################

resource "aws_vpc" "won_bills_vpc" {

  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = {
    Name        = var.vpc_name
    Project     = var.project_name
    Application = var.application_name
    Environment = var.environment
    Owner       = var.owner
  }

}

##############################################################
# Internet Gateway
##############################################################

resource "aws_internet_gateway" "won_bills_igw" {

  vpc_id = aws_vpc.won_bills_vpc.id

  tags = {
    Name        = "${var.project_name}-IGW"
    Project     = var.project_name
    Application = var.application_name
    Environment = var.environment
    Owner       = var.owner
  }

}

##############################################################
# Public Subnet 1
##############################################################

resource "aws_subnet" "public_subnet_1" {

  vpc_id = aws_vpc.won_bills_vpc.id

  cidr_block = var.public_subnet_1_cidr

  availability_zone = var.availability_zone_1

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-Public-Subnet-1"
    Type = "Public"
  }

}

##############################################################
# Public Subnet 2
##############################################################

resource "aws_subnet" "public_subnet_2" {

  vpc_id = aws_vpc.won_bills_vpc.id

  cidr_block = var.public_subnet_2_cidr

  availability_zone = var.availability_zone_2

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-Public-Subnet-2"
    Type = "Public"
  }

}

##############################################################
# Private Subnet 1
##############################################################

resource "aws_subnet" "private_subnet_1" {

  vpc_id = aws_vpc.won_bills_vpc.id

  cidr_block = var.private_subnet_1_cidr

  availability_zone = var.availability_zone_1

  tags = {
    Name = "${var.project_name}-Private-Subnet-1"
    Type = "Private"
  }

}

##############################################################
# Private Subnet 2
##############################################################

resource "aws_subnet" "private_subnet_2" {

  vpc_id = aws_vpc.won_bills_vpc.id

  cidr_block = var.private_subnet_2_cidr

  availability_zone = var.availability_zone_2

  tags = {
    Name = "${var.project_name}-Private-Subnet-2"
    Type = "Private"
  }

}