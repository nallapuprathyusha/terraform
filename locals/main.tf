resource "aws_instance" "using_locals" {
    ami = local.image_ids
    vpc_security_group_ids = [aws_security_group.allow_all_Ports.id]

    region = local.region
    instance_type = local.instace_type

    tags = merge(
        var.common_tags,
        {
            Name ="${local.common_name}-local-demo"
        }
    ) 

  }

  
resource "aws_security_group" "allow_all_Ports" {
  name   = "${local.common_name}-allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = merge(
        var.common_tags,
        {
            Name ="${local.common_name}-allow-all"
        }
    ) 

}
    
