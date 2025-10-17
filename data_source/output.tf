output "instance_ip" {
  value = data.aws_instances.ec2_instances.public_ips
}

output "ami_id_used" {
  description = "The ID of the AMI used for the EC2 instance"
  value       = data.aws_ami.existing_ami_id.id
}