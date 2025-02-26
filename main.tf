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

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "jg-vpc"
  }
}

