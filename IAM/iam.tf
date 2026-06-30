##############################################################
# IAM User
##############################################################

resource "aws_iam_user" "won_bills_user" {

  name = var.iam_user_name

  tags = {
    Name        = var.iam_user_name
    Project     = var.project_name
    Application = var.application_name
    Environment = var.environment
    Owner       = var.owner
  }

}

##############################################################
# IAM Group
##############################################################

resource "aws_iam_group" "won_bills_group" {

  name = var.iam_group_name

}

##############################################################
# Add User to Group
##############################################################

resource "aws_iam_user_group_membership" "won_bills_membership" {

  user = aws_iam_user.won_bills_user.name

  groups = [
    aws_iam_group.won_bills_group.name
  ]

}

##############################################################
# Custom IAM Policy
##############################################################

resource "aws_iam_policy" "won_bills_policy" {

  name = var.policy_name

  description = "Custom IAM Policy for WON Bills"

  policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Action = [
          "s3:*"
        ]

        Resource = "*"

      }

    ]

  })

}

##############################################################
# Attach Policy to Group
##############################################################

resource "aws_iam_group_policy_attachment" "group_policy" {

  group = aws_iam_group.won_bills_group.name

  policy_arn = aws_iam_policy.won_bills_policy.arn

}

##############################################################
# IAM Role for EC2
##############################################################

resource "aws_iam_role" "won_bills_ec2_role" {

  name = var.iam_role_name

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {

          Service = "ec2.amazonaws.com"

        }

        Action = "sts:AssumeRole"

      }

    ]

  })

}

##############################################################
# Attach AmazonSSMManagedInstanceCore
##############################################################

resource "aws_iam_role_policy_attachment" "ssm_policy" {

  role = aws_iam_role.won_bills_ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}

##############################################################
# Attach AmazonS3ReadOnlyAccess
##############################################################

resource "aws_iam_role_policy_attachment" "s3_readonly" {

  role = aws_iam_role.won_bills_ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"

}

##############################################################
# EC2 Instance Profile
##############################################################

resource "aws_iam_instance_profile" "won_bills_profile" {

  name = "won-bills-instance-profile"

  role = aws_iam_role.won_bills_ec2_role.name

}
##############################################################
# IAM Password Policy
##############################################################

resource "aws_iam_account_password_policy" "password_policy" {

  minimum_password_length = 12

  require_lowercase_characters = true

  require_uppercase_characters = true

  require_numbers = true

  require_symbols = true

  allow_users_to_change_password = true

  max_password_age = 90

  password_reuse_prevention = 5

}
##############################################################
# Admin Group
##############################################################

resource "aws_iam_group" "admin_group" {

  name = "Administrators"

}

resource "aws_iam_group_policy_attachment" "admin_access" {

  group = aws_iam_group.admin_group.name

  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"

}
##############################################################
# Developer Group
##############################################################

resource "aws_iam_group" "developer_group" {

  name = "Developers"

}

resource "aws_iam_group_policy_attachment" "developer_access" {

  group = aws_iam_group.developer_group.name

  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"

}
##############################################################
# ReadOnly Group
##############################################################

resource "aws_iam_group" "readonly_group" {

  name = "ReadOnly"

}

resource "aws_iam_group_policy_attachment" "readonly_access" {

  group = aws_iam_group.readonly_group.name

  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"

}
##############################################################
# Billing Group
##############################################################

resource "aws_iam_group" "billing_group" {

  name = "Billing"

}

resource "aws_iam_group_policy_attachment" "billing_access" {

  group = aws_iam_group.billing_group.name

  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"

}
##############################################################
# Console Login Profile
##############################################################

resource "aws_iam_user_login_profile" "console_login" {

  count = var.create_login_profile ? 1 : 0

  user = aws_iam_user.won_bills_user.name

  password_length = var.console_password_length

  password_reset_required = true

}
##############################################################
# Access Key
##############################################################

resource "aws_iam_access_key" "access_key" {

  user = aws_iam_user.won_bills_user.name

}
##############################################################
# Current AWS Account
##############################################################

data "aws_caller_identity" "current" {}


##############################################################
# Save AWS Access Keys to Local File
##############################################################

resource "local_file" "aws_credentials" {

  filename = "${path.module}/keys/aws-credentials.txt"

  file_permission = "0600"

  content = <<EOT
==================================================
AWS IAM Credentials
==================================================

Project      : ${var.project_name}
Application  : ${var.application_name}
Environment  : ${var.environment}

IAM User

Username     : ${aws_iam_user.won_bills_user.name}

Access Key ID

${aws_iam_access_key.access_key.id}

Secret Access Key

${aws_iam_access_key.access_key.secret}

Console Login

https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console

==================================================
Generated By Terraform
==================================================
EOT

}