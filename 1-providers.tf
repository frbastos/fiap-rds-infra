provider "aws" {
  region  = local.region
  profile = local.profile
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
    profile = "fiap"
    bucket = "terraform-state-rds-buscket"
    region = "us-east-1"
    key = "state/terraform.tfstate"
  }
}