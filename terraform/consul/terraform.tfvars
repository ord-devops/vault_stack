terragrunt = {
  terraform {
    source = "git::git@github.com:ord-devops/terraform-modules.git//consul_cluster?ref=1.6"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}


vpc_name = "vault_dev"
vpc_id = "vpc-cd8250a6"
aws_region = "eu-central-1"
aws_profile = "dev"
pubkey = "centos_rsa.pub"
pubkey_path = "~/.ssh/centos_rsa.pub"
privkey = "centos_rsa"
privkey_path = "~/.ssh/centos_rsa"
ansible_version = "2.4.2.0"
ansible_pull_repo = "https://git-codecommit.eu-central-1.amazonaws.com/v1/repos/ord-demo-ansible-pull"