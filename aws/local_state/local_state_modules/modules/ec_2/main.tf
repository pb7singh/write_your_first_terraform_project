
  data "aws_ami" "latest" {
  owners           = [var.ami_owners]
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_filter]
  }

 
  }

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.latest.id
  instance_type = var.instance_type

  tags = {
    Name = var.tagName
  }


}

