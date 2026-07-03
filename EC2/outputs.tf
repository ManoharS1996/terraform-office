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
# Existing Network
##############################################################

output "vpc_id" {
  description = "Existing VPC ID"
  value       = data.aws_vpc.existing.id
}

output "public_subnet_id" {
  description = "Existing Public Subnet ID"
  value       = data.aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "Existing Web Security Group ID"
  value       = data.aws_security_group.web_sg.id
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

output "private_ip" {
  description = "Private IP"
  value       = aws_instance.wonbills_server.private_ip
}

output "public_ip" {
  description = "Public IP"
  value       = aws_instance.wonbills_server.public_ip
}

output "public_dns" {
  description = "Public DNS"
  value       = aws_instance.wonbills_server.public_dns
}

##############################################################
# Elastic IP
##############################################################

output "elastic_ip" {
  description = "Elastic IP Address"
  value       = aws_eip.wonbills_eip.public_ip
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

output "root_volume_id" {
  description = "Root EBS Volume ID"
  value       = aws_instance.wonbills_server.root_block_device[0].volume_id
}

output "extra_ebs_volume_id" {
  description = "Additional EBS Volume ID"
  value       = aws_ebs_volume.extra_disk.id
}

##############################################################
# Ubuntu AMI
##############################################################

output "ubuntu_ami" {
  description = "Ubuntu 24.04 AMI"
  value       = data.aws_ami.ubuntu.id
}

##############################################################
# SSH Command
##############################################################

output "ssh_command" {
  description = "SSH Command"

  value = "ssh -i keys/${var.key_name}.pem ubuntu@${aws_eip.wonbills_eip.public_ip}"
}