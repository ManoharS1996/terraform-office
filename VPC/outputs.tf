##############################################################
# VPC Outputs
##############################################################

output "vpc_id" {
  value = aws_vpc.won_bills_vpc.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.won_bills_igw.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet_2.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_subnet_2.id
}