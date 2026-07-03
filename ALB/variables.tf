##############################################################
# AWS
##############################################################

variable "aws_region" {

  description = "AWS Region"

  type = string

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

  description = "Environment"

  type = string

}

variable "owner" {

  description = "Owner"

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

variable "instance_id" {

  description = "EC2 Instance ID"

  type = string

}
##############################################################
# ACM Certificate
##############################################################

variable "certificate_arn" {

  description = "ACM SSL Certificate ARN"

  type = string

  default = ""

}