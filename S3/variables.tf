##############################################################
# AWS
##############################################################

variable "aws_region" {
  description = "AWS Region"
  type        = string
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
  description = "Environment"
  type        = string
}

variable "owner" {
  description = "Project Owner"
  type        = string
}

##############################################################
# S3 Bucket
##############################################################

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}