terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4FK6WH3EETWH2S6Z"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"

  tags = {
    Name = "Shubham Instance"
  }
}

resource "aws_eip" "myeip" {
  vpc      = true
}

resource "aws_eip_association" "EipAssEc2" {
    instance_id = aws_instance.myec2.id
    allocation_id = aws_eip.myeip.id
}

output "eip"{
  value = "aws_eip.myeip"
}

output "ec2"{
  value = "aws_instance.myec2"
}
