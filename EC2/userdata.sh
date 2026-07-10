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

java -version

##############################################################
# Install Jenkins
##############################################################

echo "Installing Jenkins..."

apt-get install -y fontconfig openjdk-17-jre

mkdir -p /etc/apt/keyrings

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key \
| gpg --dearmor -o /etc/apt/keyrings/jenkins-keyring.gpg

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" \
| tee /etc/apt/sources.list.d/jenkins.list >/dev/null

apt-get update -y

apt-get install -y jenkins

systemctl daemon-reload
systemctl enable jenkins
systemctl restart jenkins

sleep 20

systemctl status jenkins --no-pager

##############################################################
# Jenkins CLI Wrapper
##############################################################

cat >/usr/local/bin/jenkins <<'EOF'
#!/bin/bash

if [[ "$1" == "--version" || "$1" == "--v" ]]; then
    dpkg-query -W -f='${Version}\n' jenkins
else
    echo "Usage:"
    echo "  jenkins --version"
    echo "  jenkins --v"
fi
EOF

chmod +x /usr/local/bin/jenkins

##############################################################
# Install Node.js 22 LTS
##############################################################

curl -fsSL https://deb.nodesource.com/setup_22.x | bash -

apt-get install -y nodejs

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
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
| tee /etc/apt/sources.list.d/docker.list >/dev/null

apt-get update -y

apt-get install -y \
docker-ce \
docker-ce-cli \
containerd.io \
docker-buildx-plugin \
docker-compose-plugin

systemctl enable docker
systemctl start docker

##############################################################
# Allow Ubuntu User to Use Docker
##############################################################

usermod -aG docker ubuntu

##############################################################
# Install Nginx
##############################################################

apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

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

echo ""
echo "Java:"
java -version

echo ""
echo "Node:"
node -v

echo ""
echo "NPM:"
npm -v

echo ""
echo "PM2:"
pm2 -v

echo ""
echo "Docker:"
docker --version

echo ""
echo "Docker Compose:"
docker compose version

echo ""
echo "Git:"
git --version

echo ""
echo "AWS CLI:"
aws --version

echo ""
echo "Nginx:"
nginx -v 2>&1

echo ""
echo "Jenkins Version:"
jenkins --version

echo ""
echo "Jenkins Service:"
systemctl --no-pager --full status jenkins | head -10

##############################################################
# Jenkins Initial Admin Password
##############################################################

echo ""
echo "======================================="
echo "Jenkins Initial Admin Password"
echo "======================================="

cat /var/lib/jenkins/secrets/initialAdminPassword

##############################################################
# Server Information
##############################################################

echo ""
echo "======================================="
echo "Server Ready"
echo "======================================="

echo "Jenkins URL : http://<EC2-PUBLIC-IP>:8080"
echo "Nginx URL   : http://<EC2-PUBLIC-IP>"
echo "App Folder  : /opt/won-bills"

echo ""
echo "======================================="
echo "WON Bills Server Ready"
echo "======================================="