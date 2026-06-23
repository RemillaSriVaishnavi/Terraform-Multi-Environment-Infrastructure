terraform {
  backend "s3" {
    bucket               = "terraform-workspaces-state-vaishnavi"
    key                  = "terraform.tfstate"
    region               = "us-east-1"
    dynamodb_table       = "terraform-locks"
    encrypt              = true
    workspace_key_prefix = "environments"
  }
}