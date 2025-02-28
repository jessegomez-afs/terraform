README.md
==============================================
START  - Fri 2025-02-28 @ 09:19

my-lab4

- is there a way to scope a variable global?		try locals {} block

	local variables scope is within the module only;
	input variables can be passed to sub-modules, typically from root

	>>> QUESTION: why didn't the my-vpc/outputs.tf print these values?

>>> yes, there is!  i asked chatgpt and i have the notes to prove it:


	ask chatgpt:
	let's say I define a local variable in the root module called "some-var".  if I wanted to make this variable available to all sub-modules, would it be correct to create an entry in the root module outputs.tf file like this?

	output "some-var" {
	  description = "make some-var available to sub-modules"
	ChatGPT said:
	Not quite! Outputs are used to expose values from a module, but they don't automatically pass values to sub-modules. Instead, you should pass the local variable as an input variable to each sub-module that needs it.

	✅ Correct Approach:
	1 Define the local variable in the root module (main.tf or locals.tf in the root module):

	locals {
	  some-var = "some-value"
	}

	2 Pass it as an input variable to sub-modules in main.tf:

	module "my-vpc" {
	  source  = "./modules/my-vpc"
	  some-var = local.some-var
	}

	module "my-security-groups" {
	  source  = "./modules/my-security-groups"
	  some-var = local.some-var
	}

	3 Define an input variable in each sub-module (modules/my-vpc/variables.tf and modules/my-security-groups/variables.tf):

	variable "some-var" {
	  description = "Received from root module"
	  type        = string
	}

	4 Use it inside the sub-module (modules/my-vpc/main.tf or wherever needed):

	resource "aws_something" "example" {
	  name = var.some-var
	}

- there are booleans in the root variables.tf - use them in the next lab	<<< haven't done this yet.


https://registry.terraform.io/providers/hashicorp/aws/latest/docs



Observations:

- can i call a resource like this?

	# resource "aws_instance" "web" {
	resource "aws_instance" {
	  ami           = "ami-a1b2c3d4"
	  instance_type = "t2.micro"
	  name          = var.web-name
	}

- an example of the outputs provided by the hashicorp aws module
https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest/examples/complete

- the terraform aws modules
https://registry.terraform.io/browse/modules?provider=aws


Notes & Questions:
	pondering if I should follow a terraform certification study plan moving forward

