resource "aws_vpc" "vpctest" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = {
    Name = var.Name
    env  = "Dev"
  }
}

