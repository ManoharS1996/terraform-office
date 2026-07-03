##############################################################
# AWS
##############################################################

variable "aws_region" {

  description = "AWS Region"

  type = string

  default = "ap-south-1"

}

##############################################################
# Project
##############################################################

variable "project_name" {

  description = "Project Name"

  type = string

}

variable "application_name" {

  description = "Application Name"

  type = string

}

variable "environment" {

  description = "Deployment Environment"

  type = string

  validation {

    condition = contains(["dev", "test", "stage", "prod"], var.environment)

    error_message = "Environment must be dev, test, stage or prod."

  }

}

variable "owner" {

  description = "Project Owner"

  type = string

}

##############################################################
# Existing Infrastructure
##############################################################

variable "vpc_id" {

  description = "Existing VPC ID"

  type = string

}

variable "public_subnet_1" {

  description = "Public Subnet 1"

  type = string

}

variable "public_subnet_2" {

  description = "Public Subnet 2"

  type = string

}

variable "security_group_id" {

  description = "Existing Web Security Group"

  type = string

}

variable "target_group_arn" {

  description = "Application Load Balancer Target Group ARN"

  type = string

}

##############################################################
# Launch Template
##############################################################

variable "ami_id" {

  description = "Ubuntu AMI ID"

  type = string

}

variable "instance_type" {

  description = "EC2 Instance Type"

  type = string

  default = "t3.micro"

}

variable "key_name" {

  description = "EC2 Key Pair"

  type = string

}

##############################################################
# Root Volume
##############################################################

variable "root_volume_size" {

  description = "Root EBS Size"

  type = number

  default = 30

}

##############################################################
# Auto Scaling
##############################################################

variable "desired_capacity" {

  description = "Desired Capacity"

  type = number

  default = 2

}

variable "min_size" {

  description = "Minimum Instances"

  type = number

  default = 2

}

variable "max_size" {

  description = "Maximum Instances"

  type = number

  default = 4

}

##############################################################
# Health Check
##############################################################

variable "health_check_type" {

  description = "Health Check Type"

  type = string

  default = "ELB"

}

variable "health_check_grace_period" {

  description = "Health Check Grace Period"

  type = number

  default = 300

}