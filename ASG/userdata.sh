#!/bin/bash

##############################################################
# System Update
##############################################################

apt-get update -y
apt-get upgrade -y

##############################################################
# Utilities
##############################################################

apt-get install -y \
curl \
wget \
git \
unzip \
zip \
software-properties-common \
apt-transport-https \
ca-certificates \
gnupg \
lsb-release

##############################################################
# Java 17
##############################################################

apt-get install -y openjdk-17-jdk

##############################################################
# Node.js 22 LTS
##############################################################

curl -fsSL https://deb.nodesource.com/setup_22.x | bash -

apt-get install -y nodejs

##############################################################
# Docker
##############################################################

curl -fsSL https://get.docker.com | sh

systemctl enable docker

systemctl start docker

usermod -aG docker ubuntu

##############################################################
# PM2
##############################################################

npm install -g pm2

##############################################################
# AWS CLI
##############################################################

apt-get install -y awscli

##############################################################
# Terraform (Optional)
##############################################################

wget https://releases.hashicorp.com/terraform/1.13.0/terraform_1.13.0_linux_amd64.zip

unzip terraform_1.13.0_linux_amd64.zip

mv terraform /usr/local/bin/

rm terraform_1.13.0_linux_amd64.zip

##############################################################
# Create Application Directory
##############################################################

mkdir -p /opt/won-bills

chown ubuntu:ubuntu /opt/won-bills

##############################################################
# System Information
##############################################################

echo "==================================" > /etc/motd
echo "      WON Bills Server Ready      " >> /etc/motd
echo "==================================" >> /etc/motd

##############################################################
# Finished
##############################################################

echo "UserData completed successfully."