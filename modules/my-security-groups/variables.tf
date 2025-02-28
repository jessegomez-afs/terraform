# from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/variables.tf
# copied from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/modules/vpc-endpoints/variables.tf

variable "security-group-1" {
  description = "security group 1"
  type        = string
  default     = "jg-security-group-1"
}

variable "security-group-2" {
  description = "security group 2"
  type        = string
  default     = "jg-security-group-2"
}
