# from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/outputs.tf

output "vpc_name" {
  description = "The name of the VPC specified as argument to this module"
  value       = var.vpc_name
}

output "name" {
  description = "The name of the VPC specified as argument to this module"
  value       = aws_vpc.jg-vpc.tags["Name"]
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.jg-vpc.id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.jg-vpc.arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.jg-vpc.cidr_block
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = aws_vpc.jg-vpc.instance_tenancy
}


