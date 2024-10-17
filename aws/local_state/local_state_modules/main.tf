terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region = "us-east-1"
}    



module "ec2_instance" {
    source = "./modules/ec_2"
    instance_type= var.instance_type
    ami_filter = var.ami_filter
    tagName = var.tag_name
    ami_owners = var.ami_owners

  
}

output "ami_id" {
  value = module.ec2_instance.ami_id
  description = "The ID of the latest Ubuntu AMI"
}
  


output "instance_id" {
  value = module.ec2_instance.instance_id
  description = "The ID of the ec2 created:- "
}