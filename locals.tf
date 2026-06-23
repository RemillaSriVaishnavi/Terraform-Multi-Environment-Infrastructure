locals {
  environment = terraform.workspace

  project_name = "terraform-workspaces"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "Terraform"
  }
}