#Provider are plugins used to interact with Cloud Vendors
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4FK6WH3EETWH2S6Z"
  secret_key = "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"
}

resource "aws_instance" "ec2-user" {
  ami = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"
}
