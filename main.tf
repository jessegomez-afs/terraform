# built from:
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# and
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "my-vpc" {
  source = "./modules/my-vpc"
}

module "my-security-groups" {
  source = "./modules/my-security-groups"
}
