##############################################################
# IAM Login
##############################################################

output "iam_console_login_url" {

  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console"

}

##############################################################
# Access Key
##############################################################

output "access_key_id" {

  value = aws_iam_access_key.access_key.id

}

output "secret_access_key" {

  value = aws_iam_access_key.access_key.secret

  sensitive = true

}

##############################################################
# Temporary Password
##############################################################

output "temporary_password" {

  value = try(aws_iam_user_login_profile.console_login[0].password, null)

  sensitive = true

}