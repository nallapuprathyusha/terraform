 variable "ami_id" {
   type        = string
   default     = "ami-09c813fb71547fc4f"
   description = "ami value"
 }

 variable "instance_type" {
   type        = string
   default     = "t3.micro"
   description = "instace_type value"
 }
 
variable "ec2_tags" {
  type        = map
  default     = { 
    Name = "terraform-demo"
    terraform = true
  }
  
}

variable "security_group_id" {
  #type        = string
  default     = "allow-all-ports"

}

variable "cidr" {
  type        = list
  default     = ["0.0.0.0/0"]
  
}

variable "ingress_from_port" {
  
  default =0
}

variable "ingress_to_port" {
  
  default =0
}

variable "egress_from_port" {
  
  default =0
}

variable "egress_to_port" {
  
  default =0
}

variable "protocal" {
  
  default = -1
}

variable "security_group_tags" {
    type = map
    default = {
        Name = "allow-all-ports"
    }
}

