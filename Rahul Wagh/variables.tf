variable "env" {
  type    = string
  default = "fail"
}

variable "instance_type" {
  type        = string
  description = "Instance type of ec2 instance"
  default     = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0c6615d1e95c98aca"
}

variable "associate_public_ip_address" {
  description = "Enable public IP"
  type        = bool
  default     = false
}

variable "instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = "1"
}

# variable "user_names" {
#   type    = set(string) # use list when using count.index
#   default = ["u1", "u2", "u3"]
# }

#whenever you use type as object you have to describe its properties and its type
variable "ingress" {
  type = map(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = {
    "80" = {
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0", "115.96.27.166/32"]
    }
    "443" = {
      port        = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0", "115.96.27.166/32"]
    }
    "22" = {
      port        = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0", "115.96.27.166/32"]
    }
  }
}
