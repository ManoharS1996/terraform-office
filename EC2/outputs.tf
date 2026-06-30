##############################################################
# Project Information
##############################################################

output "project_name" {
  description = "Project Name"
  value       = var.project_name
}

output "application_name" {
  description = "Application Name"
  value       = var.application_name
}

##############################################################
# Network
##############################################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.wonbills_vpc.id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public_subnet.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "Route Table ID"
  value       = aws_route_table.public_rt.id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.wonbills_sg.id
}

##############################################################
# EC2
##############################################################

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.wonbills_server.id
}

output "instance_type" {
  description = "EC2 Instance Type"
  value       = aws_instance.wonbills_server.instance_type
}

output "availability_zone" {
  description = "Availability Zone"
  value       = aws_instance.wonbills_server.availability_zone
}

##############################################################
# Elastic IP
##############################################################

output "elastic_ip" {
  description = "Elastic IP Address"
  value       = aws_eip.wonbills_eip.public_ip
}

output "public_dns" {
  description = "Public DNS"
  value       = aws_instance.wonbills_server.public_dns
}

##############################################################
# Key Pair
##############################################################

output "key_pair_name" {
  description = "AWS Key Pair Name"
  value       = aws_key_pair.wonbills_keypair.key_name
}

output "private_key_location" {
  description = "Private Key Location"
  value       = local_file.private_key.filename
}

##############################################################
# EBS
##############################################################

output "extra_ebs_volume_id" {
  description = "Additional EBS Volume"
  value       = aws_ebs_volume.extra_disk.id
}

##############################################################
# Ubuntu AMI
##############################################################

output "ubuntu_ami" {
  description = "Ubuntu AMI"
  value       = data.aws_ami.ubuntu.id
}

##############################################################
# SSH Command
##############################################################

output "ssh_command" {
  description = "SSH Command"

  value = "ssh -i keys/${var.key_name}.pem ubuntu@${aws_eip.wonbills_eip.public_ip}"
}