# __generated__ by Terraform
resource "aws_instance" "demo" {
  ami                         = "ami-0c101f26f147fa7fd"
  associate_public_ip_address = true
  availability_zone           = "us-east-1d"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-test-keypair"
  monitoring                  = false
  security_groups             = ["launch-wizard-1"]
  subnet_id                   = "subnet-01bde38c27bcebc54"
  tags = {
    Name = "imported server"
    env  = "dev"
    Team = "devops"
  }
  tags_all = {
    Name = "test1"
  }
}
