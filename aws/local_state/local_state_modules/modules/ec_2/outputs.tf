output "ami_id" {
  value = data.aws_ami.latest.id
  description = "The ID of the latest Ubuntu AMI"
}
  


output "instance_id" {
  value = aws_instance.app_server.id
  description = "The ID of the ec2 created:- "
}