data "aws_instance" "demo" {
  instance_id = "i-03cd0556e77da1f76"

}

data "aws_ami" "amazon-linux" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }
}