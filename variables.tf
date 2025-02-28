# from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/variables.tf
# copied from https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/v5.19.0/modules/vpc-endpoints/variables.tf

variable "create" {
  description = "Determines whether resources will be created"
  type        = bool
  default     = true
}

variable "create_security_group" {
  description = "Determines if a security group is created"
  type        = bool
  default     = false
}


variable "global-var" {
  description = "What is the scope of this variable"
  type        = string
  default     = "global"
}
