terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "demo" {
  ami           = "ami-0e8a34246278c21e4"
  instance_type = "t2.micro"
  tags = {
    Name = "Dev-instance"
  }
}

output "public-ip" {
  value = aws_instance.demo.public_ip
}
output "public-dns" {
  value = aws_instance.demo.public_dns
}

output "instance-id" {
  value = "${aws_instance.demo.id}"
}