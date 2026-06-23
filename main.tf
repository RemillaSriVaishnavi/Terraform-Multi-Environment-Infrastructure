module "networking" {
  source = "./modules/networking"

  environment = terraform.workspace
}

module "compute" {
  source = "./modules/compute"

  environment   = terraform.workspace
  instance_type = var.instance_type

  subnet_id = module.networking.subnet_id
}

module "database" {
  source = "./modules/database"

  environment       = terraform.workspace
  db_instance_class = var.db_instance_class
}