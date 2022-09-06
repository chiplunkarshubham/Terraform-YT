#Provider are plugins used to interact with Cloud Vendors
provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2-user" {
  ami = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"
}
