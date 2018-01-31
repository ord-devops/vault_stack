terragrunt = {
  terraform {
    source = "git::git@github.com:ord-devops/terraform-modules.git//consul_cluster?ref=1.10"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}


vpc_id = "vpc-166da27d"
subnet_ids = ["subnet-8ab320e1","subnet-025fe04f", "subnet-437db73e"]
consul_ami = "ami-e6d54f89"
aws_region = "eu-central-1"
aws_profile = "dev"
pubkey_path = "~/.ssh/centos_rsa.pub"
