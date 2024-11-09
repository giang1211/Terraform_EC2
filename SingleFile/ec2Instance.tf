# main.tf

# Specify the provider
provider "aws" {
  region = "us-east-1"  
}
resource "aws_security_group" "my_ec2_sg" {
  name_prefix = "my-ec2-sg-"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define an EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0984f4b9e98be44bf"   
  instance_type = "t2.micro"                

  # Key pair to access the instance via SSH
  key_name = "del"                  # Replace with your actual key pair name

  # Enable a public IP if you want the instance to be accessible over the internet
  associate_public_ip_address = false

  # Security group (defined below) to allow SSH access
  vpc_security_group_ids = [aws_security_group.my_ec2_sg.id]

  # Tags for easier identification
  tags = {
    Name = "MyEC2Instance"
  }
}

