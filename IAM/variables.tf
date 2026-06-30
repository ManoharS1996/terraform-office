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
# IAM Configuration
##############################################################

variable "iam_user_name" {

  description = "IAM User Name"

  type = string

}

variable "iam_group_name" {

  description = "IAM Group Name"

  type = string

}

variable "iam_role_name" {

  description = "IAM Role Name"

  type = string

}

variable "policy_name" {

  description = "IAM Policy Name"

  type = string

}
##############################################################
# Console Password
##############################################################

variable "console_password_length" {

  description = "IAM Console Password Length"

  type = number

  default = 16

}

##############################################################
# Create Login Profile
##############################################################

variable "create_login_profile" {

  type = bool

  default = true

}