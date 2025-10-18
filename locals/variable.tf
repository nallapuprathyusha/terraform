 variable "ami_id" {
   type        = string
   default     = "ami-09c813fb71547fc4f"
   description = "ami value"
 }

 variable "project" {

  default = "roboshop"
   
 }

 variable "environment" {
   default = "dev"
 }



#  variable "instance_type" {
#    type        = string
#    default     = "t3.micro"
#    description = "instace_type value"
#  }
 
variable "common_tags" {
  type        = map
  default     = { 
    project = "roboshop"
    environment ="dev"
    terraform = true
  }
  
}


# variable "cidr" {
#   type        = list
#   default     = ["0.0.0.0/0"]
  
# }

# variable "ingress_from_port" {
  
#   default =0
# }

# variable "ingress_to_port" {
  
#   default =0
# }

# variable "egress_from_port" {
  
#   default =0
# }

# variable "egress_to_port" {
  
#   default =0
# }

# variable "protocal" {
  
#   default = -1
# }

