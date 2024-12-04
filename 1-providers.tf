provider "aws" {
  region  = local.region
  profile = var.aws_profile
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.79"
    }
  }

  backend "s3" {
    profile = var.aws_profile
    bucket = "terraform-state-rds-buscket"
    region = "us-east-1"
    key = "state/terraform.tfstate"
  }
}