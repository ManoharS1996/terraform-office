provider "aws" {

  region = var.aws_region

  default_tags {

    tags = {

      Project     = var.project_name
      Application = var.application_name
      Environment = var.environment
      Owner       = var.owner
      ManagedBy   = "Terraform"

    }

  }

}