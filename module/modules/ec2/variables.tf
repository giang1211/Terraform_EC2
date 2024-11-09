# modules/ec2/variables.tf
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "Security group ID to attach to the EC2 instance"
  type        = string
  default     = ""
}
