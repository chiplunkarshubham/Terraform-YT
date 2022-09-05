provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4FK6WH3EETWH2S6Z"
  secret_key = "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"
}

resource "aws_eip" "my-eip" {
  vpc = true
}

output "Elastic-IP Name"{
  value = "aws_eip.my-eip"
}

resource "aws_s3_bucket" "mys3" {
    bucket + "my-s3-bucket-shubham"
}

output "Bucket Name" {
    value = "aws_s3_bucket.mys3"
}
