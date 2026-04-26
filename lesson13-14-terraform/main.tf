# Who are we talking to? AWS!
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Which region? -- NOW USING VARIABLE!
provider "aws" {
  region = var.aws_region
}

# Create Security Group (firewall rules)
resource "aws_security_group" "demo_sg" {
  name        = "terraform-demo-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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

# Upload our public SSH key to AWS
resource "aws_key_pair" "demo_key" {
  key_name   = "tf-demo-key"
  public_key = file("~/.ssh/tf-demo-key.pub")
}

# Create the VM! -- NOW USING VARIABLES!
resource "aws_instance" "demo_vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.demo_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get install -y python3 openssh-server
    systemctl enable ssh
    systemctl start ssh
  EOF

  tags = {
    Name = var.vm_name
  }
}

# Show us the IP after creation!
output "public_ip" {
  value = aws_instance.demo_vm.public_ip
}
