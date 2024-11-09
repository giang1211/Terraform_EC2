# variables.tf
variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "MyInstance"
}


variable "security_group_id" {
  description = "Security group ID to attach to the EC2 instance"
  type        = string
  default     = "sg-0a8ffab56510e2bd6"
}



