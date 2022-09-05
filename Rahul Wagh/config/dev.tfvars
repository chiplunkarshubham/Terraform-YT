env="dev"
instance_type="t2.micro"
ami="ami-0c6615d1e95c98aca"
associate_public_ip_address=false
instance_count=1
ingress={
  "80" = {
    port       = 80
    protocol   = "tcp"
    cidr_blocks = ["0.0.0.0/0","115.96.27.166/32"]
  }
  "443" = {
    port       = 443
    protocol   = "tcp"
    cidr_blocks = ["0.0.0.0/0","115.96.27.166/32"]
  }
}
