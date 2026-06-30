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
# VPC
##############################################################

variable "vpc_id" {

  description = "Existing VPC ID"

  type = string

}