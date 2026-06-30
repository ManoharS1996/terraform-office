#!/bin/bash

##############################################################
# WON Bills - EC2 Bootstrap Script
# Ubuntu 24.04 LTS
##############################################################

set -e

LOG_FILE="/var/log/won-bills-bootstrap.log"

exec > >(tee -a ${LOG_FILE}) 2>&1

echo "==============================================="
echo "Starting WON Bills Server Configuration"
echo "==============================================="

##############################################################
# Update Ubuntu
##############################################################

apt-get update -y
apt-get upgrade -y

##############################################################
# Install Basic Packages
##############################################################

apt-get install -y \
curl \
wget \
git \
vim \
tree \
zip \
unzip \
htop \
net-tools \
software-properties-common \
apt-transport-https \
ca-certificates \
gnupg \
lsb-release

##############################################################
# Install Java 17
##############################################################

apt-get install -y openjdk-17-jdk

##############################################################
# Verify Java
##############################################################

java -version

##############################################################
# Install Node.js LTS (22.x)
##############################################################

curl -fsSL https://deb.nodesource.com/setup_22.x | bash -

apt-get install -y nodejs

##############################################################
# Verify Node
##############################################################

node -v
npm -v

##############################################################
# Install PM2
##############################################################

npm install -g pm2

pm2 -v

##############################################################
# Install Docker
##############################################################

install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
| gpg --dearmor -o /etc/apt/keyrings/docker.gpg

chmod a+r /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
| tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update -y

apt-get install -y \
docker-ce \
docker-ce-cli \
containerd.io \
docker-buildx-plugin \
docker-compose-plugin

##############################################################
# Start Docker
##############################################################

systemctl enable docker

systemctl start docker

##############################################################
# Allow Ubuntu User to Run Docker
##############################################################

usermod -aG docker ubuntu

##############################################################
# Install AWS CLI v2
##############################################################

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \
-o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

##############################################################
# Cleanup
##############################################################

rm -rf aws
rm -f awscliv2.zip

##############################################################
# Create Application Directory
##############################################################

mkdir -p /opt/won-bills

chown ubuntu:ubuntu /opt/won-bills

##############################################################
# Display Installed Versions
##############################################################

echo ""
echo "======================================="
echo "Installed Versions"
echo "======================================="

java -version

node -v

npm -v

pm2 -v

docker --version

docker compose version

git --version

aws --version

echo ""
echo "======================================="
echo "WON Bills Server Ready"
echo "======================================="