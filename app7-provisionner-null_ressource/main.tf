resource "aws_instance" "name" {
  ami           = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_key.key_name

  depends_on = [aws_key_pair.ec2_key]

}

resource "null_resource" "name1" {
  provisioner "local-exec" {
    command = "echo hello"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("week12kp.pem") # we put file() because the keypair is now downloaded locally as a file 
    host        = aws_instance.name.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "mkdir franck",
      "pwd",
      "nproc"
    ]
  }

  provisioner "file" {
    source      = "week12kp.pem"
    destination = "/tmp/w.pem"
  }

depends_on = [ aws_instance.name ]

}

