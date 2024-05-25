# Create RDS instance
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = var.db_instance_class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot  = true

  tags = {
    Name = "my-rds-instance"
  }
}

# Create DB subnet group
resource "aws_db_subnet_group" "main" {
  name       = "main-subnet-group"
  subnet_ids  = module.vpc.private_subnets

  tags = {
    Name = "main-subnet-group"
  }
}
