provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4FK6WH3EETWH2S6Z"
  secret_key = "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"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
