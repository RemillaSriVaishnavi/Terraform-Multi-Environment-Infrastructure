output "instance_ip" {
  value = module.compute.public_ip
}

output "database_endpoint" {
  value = module.database.db_endpoint
}