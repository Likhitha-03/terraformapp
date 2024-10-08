data "aws_instance" "existing" {
  instance_id = "i-0139c49d1891d86fe"
}

output "instance_details" {
  value = {
    instance_id         = data.aws_instance.existing.id
    public_ip           = data.aws_instance.existing.public_ip
    private_ip          = data.aws_instance.existing.private_ip
    availability_zone   = data.aws_instance.existing.availability_zone
  }
}


