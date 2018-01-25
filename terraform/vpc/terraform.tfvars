terragrunt = {
  terraform {
    source = "git::git@github.com:ord-devops/terraform-modules.git//vpc?ref=1.1"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

cidr_block = "10.100.10.0/24"
vpc_name = "vault_dev"
vpc_env = "dev"
aws_region = "eu-central-1"
aws_profile = "dev"