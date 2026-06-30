##############################################################
# AWS
##############################################################

variable "aws_region" {

  type = string

}

##############################################################
# Project
##############################################################

variable "project_name" {

  type = string

}

variable "application_name" {

  type = string

}

variable "environment" {

  type = string

}

variable "owner" {

  type = string

}

##############################################################
# EC2
##############################################################

variable "instance_id" {

  description = "Existing EC2 Instance ID"

  type = string

}

variable "availability_zone" {

  type = string

}

##############################################################
# EBS
##############################################################

variable "volume_size" {

  type = number

}

variable "device_name" {

  type = string

}
##############################################################
# EBS Performance
##############################################################

variable "iops" {

  description = "EBS IOPS"

  type = number

  default = 3000

}

variable "throughput" {

  description = "EBS Throughput"

  type = number

  default = 125

}