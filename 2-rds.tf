resource "aws_db_subnet_group" "lanchonetedb" {
  name       = local.rds_name
  subnet_ids = local.subnets_public

  tags = {
    Name = "${local.env}-${local.rds_name}-lanchonetedb"
  }
}

resource "aws_db_parameter_group" "lanchonetedb" {
  name   = local.rds_name
  family = local.rds_family

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "lanchonetedb" {
  identifier             = local.rds_name
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = local.rds_engine
  engine_version         = local.rds_engine_version
  username               = local.rds_username
  password               = local.rds_password
  db_subnet_group_name   = aws_db_subnet_group.lanchonetedb.name
  vpc_security_group_ids = [local.security_group_id]
  parameter_group_name   = aws_db_parameter_group.lanchonetedb.name
  publicly_accessible    = true
  skip_final_snapshot    = true
  apply_immediately      = true
}

resource "aws_rds_instance_state" "lanchonetedb" {
  identifier = aws_db_instance.lanchonetedb.identifier
  state      = "stopped"
}

output "rds_hostname" {
  description = "RDS instance hostname"
  value       = aws_db_instance.lanchonetedb.address
  sensitive   = true
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.lanchonetedb.port
  sensitive   = true
}

output "rds_username" {
  description = "RDS instance root username"
  value       = aws_db_instance.lanchonetedb.username
  sensitive   = true
}


