provider "aws" {

  region = "ap-south-1"

  default_tags {
    tags = {
      Project     = "WON Bills"
      Application = "WON Bills"
      Environment = "dev"
      Owner       = "Manohar"
      ManagedBy   = "Terraform"
    }
  }

}