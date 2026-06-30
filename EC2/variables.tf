##############################################################
# AWS
##############################################################

variable "aws_region" {
  description = "AWS Region"
  type        = string

  default = "ap-south-1"
}

##############################################################
# Project
##############################################################

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "application_name" {
  description = "Application Name"
  type        = string
}

variable "environment" {
  description = "Deployment Environment"
  type        = string

  validation {
    condition     = contains(["dev", "test", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, test, stage or prod."
  }
}

variable "owner" {
  description = "Project Owner"
  type        = string
}

##############################################################
# Network
##############################################################

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

##############################################################
# EC2
##############################################################

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string

  default = "t3.micro"
}

variable "volume_size" {
  description = "Root Volume Size (GB)"
  type        = number

  default = 30
}

variable "extra_volume_size" {
  description = "Additional EBS Volume Size (GB)"
  type        = number

  default = 30
}

##############################################################
# Key Pair
##############################################################

variable "key_name" {
  description = "AWS Key Pair Name"
  type        = string
}

##############################################################
# Security Group Ports
##############################################################

variable "allowed_ports" {

  description = "Inbound Ports"

  type = list(number)

  default = [
    22,
    80,
    443,
    3000
  ]
}