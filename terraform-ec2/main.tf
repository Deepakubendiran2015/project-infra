# AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Fetch Latest Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# Create Key Pair
resource "aws_key_pair" "jenkins_key" {
  key_name   = var.key_name
  public_key = file("jenkins-key.pub")
}

# Create EC2 Instance
resource "aws_instance" "jenkins_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = aws_key_pair.jenkins_key.key_name

  tags = {
    Name = var.instance_name
  }
}
