##############################################################
# Security Group Outputs
##############################################################

output "web_security_group_id" {

  description = "Web Security Group ID"

  value = aws_security_group.web_sg.id

}

output "application_security_group_id" {

  description = "Application Security Group ID"

  value = aws_security_group.app_sg.id

}

output "database_security_group_id" {

  description = "Database Security Group ID"

  value = aws_security_group.db_sg.id

}

output "web_security_group_name" {

  value = aws_security_group.web_sg.name

}

output "application_security_group_name" {

  value = aws_security_group.app_sg.name

}

output "database_security_group_name" {

  value = aws_security_group.db_sg.name

}