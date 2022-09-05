resource "aws_security_group" "my-sg" {
  # name        = format("%s-sg", var.env)
  name = "${terraform.workspace}-instance-new"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
