resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"

  identifier = "mysql-${var.environment}"

  instance_class = var.db_instance_class

  username = "adminuser"

  password = "Password123!"

  skip_final_snapshot = true
}