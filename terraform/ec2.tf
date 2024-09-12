resource "aws_instance" "web" {
  ami           = "ami-0182f373e66f89c85"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "runner"
  }
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}
