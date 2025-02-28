# copied from my-vpc/outputs.tf and modified accordingly

output "root_vpc_name" {
  description = "The name of the VPC specified as argument to this module"
  value       = module.my-vpc.vpc_name
}

output "root_name" {
  description = "The name of the VPC specified as argument to this module"
  value       = module.my-vpc.name
}

output "root_vpc_id" {
  description = "The ID of the VPC"
  value       = module.my-vpc.vpc_id
}

output "root_vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.my-vpc.vpc_arn
}

output "root_vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.my-vpc.vpc_cidr_block
}

output "root_vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = module.my-vpc.vpc_instance_tenancy
}

