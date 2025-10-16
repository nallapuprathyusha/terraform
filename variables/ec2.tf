resource "aws_instance" "terraform-varaiables" {
      ami = var.ami_id 
      vpc_security_group_ids = [aws_security_group.allow_all_Ports.id]
      instance_type = var.instance_type
      tags = var.ec2_tags
}
resource "aws_security_group" "allow_all_Ports" {
  name   = var.security_group_id

  egress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocal # -1 means all protocols
    cidr_blocks      = var.cidr # internet
  }

  ingress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocal # -1 means all protocols
    cidr_blocks      = var.cidr # internet
  }

  tags = var.security_group_tags

}
    