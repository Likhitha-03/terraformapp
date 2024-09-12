resource "aws_instance" "web" {
  ami           = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "docker-web-app"
  }
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}
