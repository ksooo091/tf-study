resource "aws_db_instance" "mysql_test" {
  allocated_storage    = 10
  db_name              = "dbtabasetf"
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t2.micro"
  username             = "tfmaker"
  password             = "tfmakerPass"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = "true"
}