# modules/ec2/main.tf
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  key_name = var.key_name

  # Optional security group
  vpc_security_group_ids = [var.security_group_id]

  # Optional, to make sure the instance is not publicly accessible over the internet
  associate_public_ip_address = false
}

