terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.23.0"
    }
  }
  backend "s3" {
    bucket = "douglas-remote-state"
    key    = "aws-vm/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      owner      = "douglasbarbosa"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "douglas-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-west-2"
  }
}

