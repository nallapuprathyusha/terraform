data "aws_instances" "ec2_instances" {
  filter {
    name   = "tag:Name"
    values = ["terraform"]
  }
}

data "aws_security_group" "existing_sg" {
  filter {
    name   = "tag:Name"
    values = ["allow-all-ports"]
  }
}

data "aws_ami" "existing_ami_id" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

