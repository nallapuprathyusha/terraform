locals {
image_ids = var.ami_id
region ="us-east-1"
instace_type= "t3.micro"
common_name = "${var.project}-${var.environment}"
}