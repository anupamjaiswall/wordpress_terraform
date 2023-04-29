resource "aws_db_subnet_group" "db_subnet_group" {
  name        = "db-subnet-group"
  description = "subnet group"
  subnet_ids  = [aws_subnet.subnet_1.id, aws_subnet.subnet_2.id]
}

resource "aws_db_parameter_group" "pgroup" {
  name   = "pgroup"
  family = "mariadb10.6"
}

resource "aws_db_instance" "db_instance" {
  identifier             = "db-instance"
  allocated_storage      = var.allocated_storage
  engine                 = "mariadb"
  engine_version         = "10.6"
  instance_class         = "db.t4g.micro"
  db_name                = "db"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  parameter_group_name   = aws_db_parameter_group.pgroup.name
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  skip_final_snapshot    = true

  tags = {
    Name = "db-instance"
  }
}
