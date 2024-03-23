resource "aws_instance" "server1" {
  ami = data.aws_ami.amazon-linux.id
  key_name = data.aws_instance.demo.key_name
  instance_type = "t2.micro"
}
