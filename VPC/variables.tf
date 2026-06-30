##############################################################
# AWS Configuration
##############################################################

variable "aws_region" {

  description = "AWS Region"

  type = string

}

##############################################################
# Project Configuration
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
# VPC
##############################################################

variable "vpc_name" {

  description = "VPC Name"

  type = string

}

variable "vpc_cidr" {

  description = "VPC CIDR"

  type = string

}

##############################################################
# Public Subnets
##############################################################

variable "public_subnet_1_cidr" {

  type = string

}

variable "public_subnet_2_cidr" {

  type = string

}

##############################################################
# Private Subnets
##############################################################

variable "private_subnet_1_cidr" {

  type = string

}

variable "private_subnet_2_cidr" {

  type = string

}

##############################################################
# Availability Zones
##############################################################

variable "availability_zone_1" {

  type = string

}

variable "availability_zone_2" {

  type = string

}