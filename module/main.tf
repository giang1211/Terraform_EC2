# main.tf
provider "aws" {
  region = var.aws_region
}




module "ec2_instance" {
  source          = "./modules/ec2"
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  instance_name   = var.instance_name
  security_group_id = var.security_group_id

}
