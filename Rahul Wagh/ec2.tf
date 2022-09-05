provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA4FK6WH3EETWH2S6Z"
  secret_key = "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"
}

resource "aws_instance" "my_instance" {
  ami                         = var.ami                         # string
  instance_type               = var.instance_type               #string
  associate_public_ip_address = var.associate_public_ip_address #bool
  count                       = var.instance_count              #number
  vpc_security_group_ids      = [aws_security_group.my-sg.id]

  tags = {
    # Name = format("%s-instance", var.env) # how to use $() in this scenerio
    # Name = "${var.env}-instance"
    Name = "${terraform.workspace}-instance-new"
  }
}
