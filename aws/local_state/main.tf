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
  region  = "us-east-1"
}

  data "aws_ami" "latest" {
  owners           = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }

 
  }

resource "aws_instance" "app_server" {
  ami           = "aws_ami.latest.id"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }


}
  


