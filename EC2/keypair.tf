##############################################################
# Generate RSA Private Key
##############################################################

resource "tls_private_key" "wonbills_key" {

  algorithm = "RSA"

  rsa_bits = 4096

}

##############################################################
# Save Private Key Locally
##############################################################

resource "local_file" "private_key" {

  content = tls_private_key.wonbills_key.private_key_pem

  filename = "${path.module}/keys/${var.key_name}.pem"

  file_permission = "0400"

}

##############################################################
# Create AWS Key Pair
##############################################################

resource "aws_key_pair" "wonbills_keypair" {

  key_name = var.key_name

  public_key = tls_private_key.wonbills_key.public_key_openssh

  tags = {

    Name = "${var.project_name}-KeyPair"

  }

}