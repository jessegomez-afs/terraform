

==============================================
START  - Fri 2025-02-28 @ 09:19

my-lab3

My intent was to create sub-modules for the VPC and Security Groups.

I could have made direct resource calls to aws_vpc or aws_security_groups from main.tf, but instead the resource calls were made from within my own sub-modules.

Observations:

- variables.tf & outputs.tf in the root module DO NOT SCOPE TO THE SUB-MODULES
each module has it's own variables & outputs *.tf files

- I made lots of errors with dashes and underscores in my variable and module names.
for example, a submodule called 'my-security-groups' was written as 'my-security_groups' in the tf file.

- how to properly call a resource
https:://developer.hashicorp.com/terraform/language/resources/syntax

	Resource Syntax
	A resource block declares a resource of a specific type with a specific local name. Terraform uses the name when referring to the resource in the same module, but it has no meaning outside that module's scope.

	In the following example, the aws_instance resource type is named web. The resource type and name must be unique within a module because they serve as an identifier for a given resource.

	resource "aws_instance" "web" {
	  ami           = "ami-a1b2c3d4"
	  instance_type = "t2.micro"

- an example of the outputs provided by the hashicorp aws module
https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest/examples/complete

- the terraform aws modules
https://registry.terraform.io/browse/modules?provider=aws


Notes & Questions:

- is there a way to scope a variable global?

- dashes & underscores - use one or the other, but not both

- there are booleans in the root variables.tf - use them in the next lab


https://registry.terraform.io/providers/hashicorp/aws/latest/docs


