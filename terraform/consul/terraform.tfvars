terragrunt = {
  terraform {
    source = "git::git@github.com:ord-devops/terraform-modules.git//consul_cluster?ref=1.8"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}


vpc_name = "vault_dev"
vpc_id = "vpc-cd8250a6"
aws_region = "eu-central-1"
aws_profile = "dev"
pubkey_path = "~/.ssh/centos_rsa.pub"
privkey_path = "~/.ssh/centos_rsa"
ansible_version = "2.4.2.0"
ansible_pull_repo = "git@github.com:ord-devops/vault_stack_ansible_pull.git"
consul_encryption_key_path = "~/sources/secrets/consul_encryption_key.ciphertext.base64"