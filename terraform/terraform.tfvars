terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "vault-dev-tf-state"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "eu-central-1"
      encrypt        = true
      dynamodb_table = "vault-dev-terraform-state-lock-dev"
      profile        = "dev"
    }
  }
}