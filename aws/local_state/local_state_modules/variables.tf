
variable "ami_owners" {
  description = "List of AMI owners to filter the AMIs"
  type        = string
  default     = "099720109477"  # Default owner for Ubuntu AMIs
}

variable "ami_filter" {
  description = "The filter to apply when searching for AMIs"
  default     = "*ubuntu-noble*"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "tag_name" {
  description = "The name tag for the EC2 instance"
  default     = "My_Terraform_Instance"
}
