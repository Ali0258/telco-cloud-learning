# What region in AWS?
variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-north-1"
}

# What size VM?
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# What name for the VM?
variable "vm_name" {
  description = "Name tag for the VM"
  type        = string
  default     = "terraform-ansible-demo"
}

# What AMI (which Ubuntu image)?
variable "ami_id" {
  description = "AMI ID for Ubuntu in eu-north-1"
  type        = string
  default     = "ami-08eb150f611ca277f"
}
