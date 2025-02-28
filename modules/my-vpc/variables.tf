# from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/variables.tf

variable "vpc_name" {
  description = "Name to be used for the VPC"
  type        = string
  default     = "jg-vpc"
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}
# copied from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/modules/vpc-endpoints/variables.tf

