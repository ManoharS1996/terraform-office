<div align="center">

# 🚀 Terraform AWS Infrastructure Repository

### 🌩️ Enterprise AWS Infrastructure as Code (IaC) using Terraform

Design, Deploy, and Manage **Production-Ready AWS Infrastructure** using **Terraform** with modular, reusable, and scalable Infrastructure as Code (IaC) practices.

---

![Terraform](https://img.shields.io/badge/Terraform-v1.8+-623CE4?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/Amazon_AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge&logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-green?style=for-the-badge&logo=linux)
![DevOps](https://img.shields.io/badge/DevOps-Terraform-blue?style=for-the-badge)
![IaC](https://img.shields.io/badge/Infrastructure_as_Code-Terraform-7B42BC?style=for-the-badge)
![AWS EC2](https://img.shields.io/badge/Amazon-EC2-orange?style=for-the-badge&logo=amazonec2)
![Amazon S3](https://img.shields.io/badge/Amazon-S3-green?style=for-the-badge&logo=amazons3)
![Amazon VPC](https://img.shields.io/badge/Amazon-VPC-blue?style=for-the-badge)
![Auto Scaling](https://img.shields.io/badge/AWS-AutoScaling-red?style=for-the-badge)
![Load Balancer](https://img.shields.io/badge/Application-LoadBalancer-yellow?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)

---

## 📦 Repository Includes

🌐 Amazon VPC • 🛡️ Security Groups • 🔐 IAM • 🖥️ EC2 • 💾 Amazon EBS • 🪣 Amazon S3 • ⚖️ Application Load Balancer • 📈 Auto Scaling Group

---

## 🎯 Repository Goal

Build secure, scalable, highly available, and production-ready AWS infrastructure using **Terraform** by following Infrastructure as Code (IaC) best practices.

This repository demonstrates how independent Terraform projects can work together to create a complete AWS infrastructure environment suitable for real-world deployments.

</div>

---

# 📖 Overview

This repository contains **eight independent Terraform projects**, where each project provisions a specific AWS service.

Each service is managed separately, allowing infrastructure to be deployed, updated, and destroyed independently while maintaining proper dependencies between resources.

The repository follows Infrastructure as Code (IaC) principles and demonstrates modern Terraform practices such as reusable variables, modular project design, consistent tagging, secure AWS resource provisioning, and production-ready folder organization.

This project can be used for:

- Learning Terraform
- AWS Infrastructure Automation
- DevOps Portfolio Projects
- Infrastructure as Code (IaC)
- Terraform Best Practices
- Cloud Infrastructure Deployments

---

# ✨ Key Features

- 🚀 Infrastructure as Code (Terraform)
- ☁️ Amazon Web Services (AWS)
- 🌐 Production-Ready VPC Networking
- 🖥️ Ubuntu 24.04 EC2 Deployment
- 💾 Encrypted Amazon EBS Storage
- 🪣 Secure Amazon S3 Buckets
- 🔐 AWS IAM Users, Groups, Policies & Roles
- 🛡️ Three-Layer Security Groups
- ⚖️ Application Load Balancer (ALB)
- 📈 Auto Scaling Group (ASG)
- 📊 CloudWatch Scaling Policies
- 🔄 Modular Terraform Projects
- 🏷️ Standard Resource Tagging
- 📖 Easy to Understand Folder Structure
- ⚡ Independent Project Deployment
- 🛠️ Production-Oriented Design

---

# 📊 Repository Status

| AWS Service | Purpose | Status |
|-------------|---------|:------:|
| 🌐 Amazon VPC | Networking Infrastructure | ✅ Completed |
| 🛡️ Security Groups | Network Firewall | ✅ Completed |
| 🔐 AWS IAM | Identity & Access Management | ✅ Completed |
| 🖥️ Amazon EC2 | Compute Instance | ✅ Completed |
| 💾 Amazon EBS | Persistent Storage | ✅ Completed |
| 🪣 Amazon S3 | Object Storage | ✅ Completed |
| ⚖️ Application Load Balancer | Traffic Distribution | ✅ Completed |
| 📈 Auto Scaling Group | High Availability & Auto Scaling | ✅ Completed |

---

# 📚 Table of Contents

- 📖 Overview
- ✨ Key Features
- 📊 Repository Status
- 📂 Repository Structure
- ☁️ AWS Services Included
- 🏗️ AWS Infrastructure Architecture
- 🔄 Infrastructure Workflow
- 📦 Project Modules
- 🚀 Deployment Guide
- ⚙️ Terraform Commands
- 📁 Terraform File Explanation
- 📤 Outputs
- 🔍 Verification Guide
- 🛠️ Troubleshooting
- 🛡️ Best Practices
- 📈 Project Roadmap
- 💻 Technologies Used
- 👨‍💻 Author
- 📄 License

---
# 📂 Repository Structure

```text
terraform-office/
│
├── 📁 VPC/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 SecurityGroups/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── security-group.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 IAM/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── iam.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 EC2/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   ├── keypair.tf
│   ├── compute.tf
│   ├── userdata.sh
│   ├── outputs.tf
│   └── README.md
│
├── 📁 EBS/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── ebs.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 S3/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 ALB/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── datasource.tf
│   ├── security-group.tf
│   ├── load-balancer.tf
│   ├── target-group.tf
│   ├── listener.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 ASG/
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── datasource.tf
│   ├── launch-template.tf
│   ├── autoscaling.tf
│   ├── scaling-policy.tf
│   ├── cloudwatch.tf
│   ├── userdata.sh
│   ├── outputs.tf
│   └── README.md
│
├── .gitignore
├── LICENSE
└── README.md
```

---

# ☁️ AWS Services Included

| Service | Purpose | Status |
|----------|---------|:------:|
| 🌐 Amazon VPC | Networking Infrastructure | ✅ |
| 🛡️ Security Groups | Network Firewall | ✅ |
| 🔐 AWS IAM | Identity & Access Management | ✅ |
| 🖥️ Amazon EC2 | Compute Instance | ✅ |
| 💾 Amazon EBS | Persistent Block Storage | ✅ |
| 🪣 Amazon S3 | Object Storage | ✅ |
| ⚖️ Application Load Balancer | Traffic Distribution | ✅ |
| 📈 Auto Scaling Group | High Availability | ✅ |

---

# 🏗️ Complete AWS Infrastructure Architecture

```text
                                         🌍 Internet
                                              │
                                              ▼
                                    Internet Gateway
                                              │
                                              ▼
                                        Public Route
                                              │
                                              ▼
                                    Public Subnet 1
                                              │
                       ┌──────────────────────┴──────────────────────┐
                       │                                             │
                       ▼                                             ▼
          Application Load Balancer                         Public Subnet 2
                       │
                       ▼
                 Target Group
                       │
          ┌────────────┴────────────┐
          │                         │
          ▼                         ▼
     EC2 Instance              EC2 Instance
          ▲                         ▲
          └──────────┬──────────────┘
                     │
              Auto Scaling Group
                     │
             Launch Template
                     │
         ┌───────────┼────────────┐
         │           │            │
         ▼           ▼            ▼
   Security Group  Root EBS   User Data
         │           │
         │      Additional EBS
         │
         ▼
      IAM Role
         │
         ▼
 Amazon S3 Bucket

         │
         ▼
 CloudWatch Alarms
         │
         ▼
 Scale Out / Scale In
```

---

# 🔄 Infrastructure Deployment Order

Deploy the projects in the following sequence:

```text
1️⃣ VPC

        │

        ▼

2️⃣ Security Groups

        │

        ▼

3️⃣ IAM

        │

        ▼

4️⃣ EC2

        │

        ▼

5️⃣ EBS

        │

        ▼

6️⃣ S3

        │

        ▼

7️⃣ Application Load Balancer

        │

        ▼

8️⃣ Auto Scaling Group
```

---

# 🔗 AWS Resource Dependency

```text
Amazon VPC
      │
      ▼
Public / Private Subnets
      │
      ▼
Internet Gateway
      │
      ▼
Route Tables
      │
      ▼
Security Groups
      │
      ▼
IAM
      │
      ▼
EC2 Instance
      │
 ┌────┴───────────┐
 ▼                ▼
EBS             Amazon S3
 │
 ▼
Application Load Balancer
 │
 ▼
Target Group
 │
 ▼
Launch Template
 │
 ▼
Auto Scaling Group
 │
 ▼
CloudWatch Scaling Policies
```

---

# 🎯 Repository Design Principles

This repository is designed using Infrastructure as Code (IaC) best practices.

### Design Goals

- 📦 Independent Terraform Projects
- 🔄 Modular Infrastructure
- 🔐 Secure AWS Resources
- 📈 High Availability
- ⚖️ Load Balanced Architecture
- 🚀 Automatic Scaling
- 🏷️ Standard Resource Tagging
- ♻️ Reusable Configuration
- 📖 Well Documented Projects
- 🛠️ Easy Maintenance
- ☁️ Production-Ready Design
- 💰 Cost Efficient Infrastructure

---
# 🌐 Amazon VPC

Amazon Virtual Private Cloud (VPC) provides an isolated networking environment for all AWS resources.

The VPC is the foundation of this infrastructure and hosts all networking resources including subnets, route tables, internet gateway, security groups, EC2 instances, Application Load Balancer, and Auto Scaling Group.

---

## 🎯 Purpose

- Create an isolated AWS network
- Configure public and private subnets
- Enable secure Internet connectivity
- Route traffic correctly
- Provide scalable network architecture

---

## 📦 Resources Created

- Amazon VPC
- Internet Gateway
- Public Subnet 1
- Public Subnet 2
- Private Subnet 1
- Private Subnet 2
- Public Route Table
- Private Route Table
- Route Table Associations

---

## 🔄 VPC Workflow

```text
Terraform

      │

      ▼

Create VPC

      │

      ▼

Create Public & Private Subnets

      │

      ▼

Create Internet Gateway

      │

      ▼

Create Route Tables

      │

      ▼

Associate Route Tables

      │

      ▼

Network Ready
```

---

## 🌍 Network Architecture

```text
                 Amazon VPC
              10.0.0.0/16
                     │
     ┌───────────────┼───────────────┐
     │                               │
     ▼                               ▼
Public Subnet 1                Public Subnet 2
10.0.1.0/24                    10.0.2.0/24
     │                               │
     └───────────────┬───────────────┘
                     │
             Internet Gateway
                     │
                  Internet
```

---

## ✅ Benefits

- Secure Network Isolation
- High Availability
- Scalable Design
- Custom IP Addressing
- Internet Connectivity
- Multi-AZ Support
- Production Ready

---

## 🔍 Verify in AWS Console

Navigate to:

```text
AWS Console

↓

VPC

↓

Your VPC
```

Verify:

- VPC Created
- Public Subnets
- Private Subnets
- Internet Gateway Attached
- Route Tables
- Route Table Associations

---

# 🛡️ Security Groups

Security Groups act as virtual firewalls that control inbound and outbound traffic.

This repository creates three dedicated Security Groups to separate Web, Application, and Database traffic.

---

## 🎯 Purpose

- Secure EC2 Instances
- Control Network Access
- Restrict Application Ports
- Follow Least Privilege Principle

---

## 📦 Resources Created

- Web Security Group
- Application Security Group
- Database Security Group

---

# 🌍 Web Security Group

Used by:

- Application Load Balancer
- Web EC2 Instances

### Allowed Ports

| Port | Service |
|------|----------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |

Workflow

```text
Internet

↓

Web Security Group

↓

EC2 / ALB
```

---

# ⚙️ Application Security Group

Used by:

- Backend Applications
- APIs

### Allowed Ports

| Port | Service |
|------|----------|
| 3000 | Node.js |
| 5000 | Custom Application |
| 8080 | Spring Boot |

Traffic Source

```text
Web Security Group

↓

Application Security Group
```

---

# 🗄️ Database Security Group

Used by:

- MySQL
- PostgreSQL
- MongoDB
- Redis

### Allowed Ports

| Port | Database |
|------|-----------|
| 3306 | MySQL |
| 5432 | PostgreSQL |
| 27017 | MongoDB |
| 6379 | Redis |

Traffic Source

```text
Application Security Group

↓

Database Security Group
```

---

# 🔒 Security Architecture

```text
                 Internet
                     │
                     ▼
          Web Security Group
        (22, 80, 443 Allowed)
                     │
                     ▼
      Application Security Group
      (3000, 5000, 8080 Allowed)
                     │
                     ▼
       Database Security Group
 (3306, 5432, 27017, 6379 Allowed)
```

---

## 🔄 Security Flow

```text
Internet

↓

Application Load Balancer

↓

Web Security Group

↓

Application Security Group

↓

Database Security Group
```

---

## ✅ Benefits

- Layered Security
- Least Privilege Access
- Isolated Application Traffic
- Secure Database Connectivity
- Easy Firewall Management
- Production-Ready Network Security

---

## 🔍 Verify in AWS Console

Navigate to:

```text
AWS Console

↓

EC2

↓

Security Groups
```

Verify:

- Web Security Group
- Application Security Group
- Database Security Group
- Inbound Rules
- Outbound Rules
- Associated Resources

---
# 🔐 AWS Identity and Access Management (IAM)

AWS IAM provides secure authentication and authorization for AWS resources.

This project provisions an IAM user with programmatic and console access, making it suitable for Terraform deployments and AWS administration.

---

## 🎯 Purpose

- Manage AWS identities securely
- Create IAM Users
- Generate Access Keys
- Enable AWS Console Login
- Follow Least Privilege Access

---

## 📦 Resources Created

- IAM User
- Login Profile
- Access Key
- Secret Access Key
- IAM Policies
- IAM Group (Optional)

---

## 🔄 IAM Workflow

```text
Terraform

      │

      ▼

Create IAM User

      │

      ▼

Generate Login Profile

      │

      ▼

Generate Access Key

      │

      ▼

Attach IAM Policies

      │

      ▼

IAM User Ready
```

---

## 🔑 IAM Outputs

After deployment Terraform generates:

- IAM Username
- AWS Console Login URL
- Access Key ID
- Secret Access Key
- Temporary Password

---

## 🔒 IAM Security Best Practices

- Rotate Access Keys regularly
- Enable MFA for Console Login
- Never commit Access Keys to GitHub
- Use IAM Roles whenever possible
- Follow Least Privilege Principle

---

## 🔍 Verify in AWS Console

Navigate to:

```text
AWS Console

↓

IAM

↓

Users
```

Verify:

- IAM User
- Login Profile
- Access Keys
- Attached Policies

---

# 🖥️ Amazon EC2

Amazon EC2 provides secure and scalable virtual servers for hosting applications.

The EC2 project creates a production-ready Ubuntu server with an Elastic IP, SSH Key Pair, encrypted root EBS volume, and automated software installation using User Data.

---

## 🎯 Purpose

- Launch Ubuntu Server
- Configure SSH Access
- Install Required Software Automatically
- Assign Elastic IP
- Enable Secure Remote Access

---

## 📦 Resources Created

- Ubuntu 24.04 EC2 Instance
- Elastic IP
- SSH Key Pair
- Root EBS Volume
- User Data Script

---

## 🔄 EC2 Deployment Workflow

```text
Terraform

      │

      ▼

Create Key Pair

      │

      ▼

Launch Ubuntu EC2

      │

      ▼

Create Root EBS

      │

      ▼

Associate Elastic IP

      │

      ▼

Execute userdata.sh

      │

      ▼

EC2 Ready
```

---

# 🔑 SSH Key Pair

Terraform automatically creates an SSH Key Pair and stores the private key locally.

Example:

```text
keys/

└── won-bills-key.pem
```

SSH Connection:

```bash
ssh -i keys/won-bills-key.pem ubuntu@<Elastic-IP>
```

---

# 🌍 Elastic IP

Elastic IP provides a static public IP address.

Benefits:

- Static Public IP
- Easy DNS Mapping
- Stable SSH Connection
- Suitable for Production

---

# 💾 Root EBS Volume

Root Storage Configuration:

| Property | Value |
|----------|-------|
| Type | gp3 |
| Size | 30 GB |
| Encryption | Enabled |
| Delete on Termination | Enabled |

---

# ⚙️ User Data

During instance creation, Terraform automatically executes:

```text
userdata.sh
```

The script installs and configures:

- Ubuntu Updates
- Java 17
- Node.js
- Docker
- PM2
- AWS CLI
- Terraform (Optional)
- Git
- Curl
- Wget
- Application Directory

No manual server setup is required.

---

## 🏗️ EC2 Architecture

```text
Terraform

      │

      ▼

Launch EC2

      │

      ▼

Create Root EBS

      │

      ▼

Allocate Elastic IP

      │

      ▼

Run userdata.sh

      │

      ▼

Ubuntu Server Ready
```

---

## 🔍 Verify in AWS Console

Navigate to:

```text
AWS Console

↓

EC2

↓

Instances
```

Verify:

- Instance Running
- Ubuntu 24.04
- Elastic IP Attached
- Key Pair Assigned
- Security Group Attached
- Root Volume Created

---

## 🧪 Verify via SSH

Connect:

```bash
ssh -i keys/won-bills-key.pem ubuntu@<Elastic-IP>
```

Verify software:

```bash
java -version
```

```bash
node -v
```

```bash
docker --version
```

```bash
pm2 -v
```

```bash
aws --version
```

---

## ✅ EC2 Benefits

- Automated Provisioning
- Secure SSH Access
- Static Public IP
- Encrypted Root Storage
- Infrastructure as Code
- Production-Ready Ubuntu Server
- Repeatable Deployment
- Easy Maintenance

---
# 💾 Amazon Elastic Block Store (EBS)

Amazon Elastic Block Store (EBS) provides persistent block-level storage for Amazon EC2 instances.

Unlike instance storage, EBS volumes retain data even after the EC2 instance is stopped or restarted, making them ideal for databases, applications, logs, and backups.

---

## 🎯 Purpose

- Persistent Storage
- High Performance SSD Storage
- Data Backup using Snapshots
- Additional Storage for Applications
- Encrypted Storage

---

## 📦 Resources Created

- Additional EBS Volume
- EBS Volume Attachment
- EBS Snapshot

---

## ⚙️ EBS Configuration

| Property | Value |
|----------|-------|
| Volume Type | gp3 |
| Size | 30 GB |
| IOPS | 3000 |
| Throughput | 125 MB/s |
| Encryption | Enabled |
| Snapshot | Enabled |

---

## 🔄 EBS Workflow

```text
Terraform

      │

      ▼

Create EBS Volume

      │

      ▼

Attach Volume to EC2

      │

      ▼

Create Snapshot

      │

      ▼

Storage Ready
```

---

## 🏗️ EBS Architecture

```text
                 EC2 Instance
                      │
        ┌─────────────┴─────────────┐
        │                           │
        ▼                           ▼

 Root EBS (30 GB)          Additional EBS (30 GB)

                                     │

                                     ▼

                              Snapshot Backup
```

---

## 📂 Volume Attachment

The additional EBS volume is attached to the EC2 instance.

Example Device Name

```text
/dev/sdg
```

---

## 📸 Snapshot

Terraform automatically creates a snapshot for backup purposes.

Benefits

- Disaster Recovery
- Restore Volume
- Backup
- Clone Storage
- Migration

---

## 🔍 Verify in AWS Console

Navigate to

```text
AWS Console

↓

EC2

↓

Volumes
```

Verify

- Root Volume
- Additional Volume
- Attached Instance
- Volume State
- Encryption Enabled

---

Check Snapshot

```text
AWS Console

↓

EC2

↓

Snapshots
```

Verify

- Snapshot Created
- Volume Reference
- Completed State

---

## ✅ EBS Benefits

- Persistent Storage
- High Performance SSD
- Data Encryption
- Easy Expansion
- Snapshot Backup
- Production Ready

---

# 🪣 Amazon Simple Storage Service (S3)

Amazon S3 provides highly durable object storage for applications, backups, images, videos, logs, and documents.

This project provisions a secure S3 bucket with versioning, encryption, and uploads a sample object.

---

## 🎯 Purpose

- Object Storage
- Application Assets
- Backup Storage
- Static Files
- Log Storage

---

## 📦 Resources Created

- Amazon S3 Bucket
- Bucket Encryption
- Bucket Versioning
- Sample Object Upload

---

## ⚙️ Bucket Configuration

| Property | Value |
|----------|-------|
| Bucket Type | General Purpose |
| Versioning | Enabled |
| Encryption | AES256 |
| Public Access | Configurable |

---

## 🔄 S3 Workflow

```text
Terraform

      │

      ▼

Create Bucket

      │

      ▼

Enable Encryption

      │

      ▼

Enable Versioning

      │

      ▼

Upload Sample Object

      │

      ▼

Bucket Ready
```

---

## 🏗️ S3 Architecture

```text
Application

      │

      ▼

Amazon S3 Bucket

      │

      ├──────── Images

      ├──────── Documents

      ├──────── Backups

      ├──────── Static Files

      └──────── Logs
```

---

## 📁 Uploaded Object

Example

```text
documents/

└── sample.txt
```

---

## 🔒 Bucket Security

- Server Side Encryption
- Versioning Enabled
- Terraform Managed
- Globally Unique Bucket Name

---

## 🔍 Verify in AWS Console

Navigate to

```text
AWS Console

↓

Amazon S3

↓

Bucket
```

Verify

- Bucket Created
- Encryption Enabled
- Versioning Enabled
- Sample Object Uploaded

---

## 📤 Example Outputs

Terraform outputs

- Bucket Name
- Bucket ARN
- Bucket Region
- Object URL
- Public URL
- S3 URI

---

## ✅ S3 Benefits

- Highly Durable
- Highly Available
- Low Cost Storage
- Secure Object Storage
- Versioning
- Encryption
- Easy Backup
- Static Website Support

---

## 🔄 EC2 + EBS + S3 Integration

```text
                EC2 Instance
                     │
        ┌────────────┴─────────────┐
        ▼                          ▼

 Root EBS                  Additional EBS

        │                          │

        └────────────┬─────────────┘
                     ▼

              Application Data

                     │

                     ▼

              Amazon S3 Bucket

                     │

        ┌────────────┼─────────────┐

        ▼            ▼             ▼

    Documents      Images      Backups
```

---

## 🎯 Best Practices

- Use **gp3** volumes for better performance and predictable costs.
- Encrypt all EBS volumes and S3 buckets.
- Enable S3 versioning to protect against accidental deletion.
- Take regular EBS snapshots before major updates.
- Use lifecycle policies in S3 for long-term cost optimization.
- Keep application data on EBS and backups or static assets in S3.

---
# ⚖️ Application Load Balancer (ALB)

Application Load Balancer (ALB) distributes incoming HTTP/HTTPS traffic across multiple Amazon EC2 instances to improve application availability, scalability, and fault tolerance.

In this project, the ALB is deployed across two public subnets and forwards requests to a Target Group containing EC2 instances.

---

## 🎯 Purpose

- High Availability
- Load Distribution
- Fault Tolerance
- Health Monitoring
- Automatic Target Registration
- SSL/TLS Ready
- Internet-Facing Application Access

---

## 📦 Resources Created

- Application Load Balancer
- ALB Security Group
- Target Group
- HTTP Listener
- Target Group Attachment

---

## ⚙️ ALB Configuration

| Property | Value |
|----------|-------|
| Type | Application Load Balancer |
| Scheme | Internet Facing |
| IP Type | IPv4 |
| Listener | HTTP (80) |
| Target Type | Instance |
| Health Check | HTTP |

---

# 🔄 ALB Workflow

```text
Internet

      │

      ▼

Application Load Balancer

      │

      ▼

HTTP Listener

      │

      ▼

Target Group

      │

      ▼

Healthy EC2 Instances
```

---

# 🏗️ ALB Architecture

```text
                    Internet

                        │

                        ▼

        Application Load Balancer

                        │

                        ▼

                HTTP Listener (80)

                        │

                        ▼

                 Target Group

            ┌───────────┴───────────┐

            ▼                       ▼

      EC2 Instance 1          EC2 Instance 2
```

---

# ❤️ Health Check Process

ALB continuously verifies application availability.

```text
ALB

↓

Target Group

↓

Health Check

↓

Healthy ?

├── Yes → Forward Traffic

└── No → Stop Sending Traffic
```

---

## 🔍 Verify in AWS Console

Navigate to

```text
AWS Console

↓

EC2

↓

Load Balancers
```

Verify

- ALB Created
- Status = Active
- Listener Running
- DNS Name Available

---

Target Group

```text
EC2

↓

Target Groups
```

Verify

- Registered Targets
- Healthy Targets
- Health Check Status

---

## 🌍 Test the Application

Open

```text
http://<ALB-DNS>
```

Example

```text
http://won-bills-alb.ap-south-1.elb.amazonaws.com
```

If your application is deployed on the EC2 instances and listening on the configured port, the ALB DNS name should serve the application.

---

## ✅ Benefits

- High Availability
- Automatic Traffic Distribution
- Health Monitoring
- Zero Downtime Deployments
- SSL Ready
- Scalable Architecture

---

# 📈 Auto Scaling Group (ASG)

Auto Scaling Group automatically launches and terminates EC2 instances based on demand, helping maintain application availability and optimize costs.

This project uses a Launch Template, integrates with the ALB Target Group, and scales instances using CloudWatch alarms.

---

## 🎯 Purpose

- Automatic Scaling
- High Availability
- Self Healing Infrastructure
- Cost Optimization
- Load Based Scaling

---

## 📦 Resources Created

- Launch Template
- Auto Scaling Group
- CloudWatch Alarms
- Scale Out Policy
- Scale In Policy

---

## ⚙️ ASG Configuration

| Property | Value |
|----------|-------|
| Instance Type | t3.micro |
| Desired Capacity | 2 |
| Minimum Capacity | 2 |
| Maximum Capacity | 4 |
| Health Check | ELB |
| Launch Template | Enabled |

---

# 🚀 Launch Template

The Launch Template defines how every new EC2 instance should be created.

It includes:

- Ubuntu AMI
- Instance Type
- Security Group
- SSH Key Pair
- Root EBS Volume
- User Data Script
- Monitoring Configuration

Whenever Auto Scaling launches a new instance, it uses this template automatically.

---

# 🔄 ASG Workflow

```text
CloudWatch

      │

      ▼

CPU Monitoring

      │

      ▼

Auto Scaling Group

      │

      ├──────── CPU High

      │

      ▼

Launch New EC2

      │

      ▼

Register with Target Group

      │

      ▼

ALB Starts Routing Traffic
```

---

# 📉 Scale In Workflow

```text
CloudWatch

      │

      ▼

CPU Low

      │

      ▼

Scale In Policy

      │

      ▼

Terminate EC2

      │

      ▼

Remove From Target Group
```

---

# 📊 CloudWatch Monitoring

Two alarms are configured.

### High CPU Alarm

Trigger

```text
CPU >= 70%
```

Action

```text
Launch one EC2 Instance
```

---

### Low CPU Alarm

Trigger

```text
CPU <= 20%
```

Action

```text
Terminate one EC2 Instance
```

---

# 🏗️ Complete Scaling Architecture

```text
                 Internet

                     │

                     ▼

          Application Load Balancer

                     │

                     ▼

              Target Group

                     │

         ┌───────────┴───────────┐

         ▼                       ▼

   EC2 Instance            EC2 Instance

         ▲                       ▲

         └───────────┬───────────┘

                     │

             Auto Scaling Group

                     │

              Launch Template

                     │

                CloudWatch

          ┌──────────┴──────────┐

          ▼                     ▼

     High CPU Alarm        Low CPU Alarm

          │                     │

          ▼                     ▼

      Scale Out             Scale In
```

---

## 🔍 Verify in AWS Console

Navigate to

```text
AWS Console

↓

EC2

↓

Auto Scaling Groups
```

Verify

- Auto Scaling Group Created
- Desired Capacity
- Minimum Capacity
- Maximum Capacity

---

Launch Templates

```text
EC2

↓

Launch Templates
```

Verify

- Launch Template
- Latest Version
- AMI
- Instance Type
- User Data

---

CloudWatch

```text
AWS Console

↓

CloudWatch

↓

Alarms
```

Verify

- High CPU Alarm
- Low CPU Alarm
- Alarm State

---

## 🧪 Test Auto Scaling

1. Generate CPU load on one instance.
2. Wait for the High CPU alarm to trigger.
3. Confirm a new EC2 instance is launched.
4. Verify it registers automatically with the Target Group.
5. Reduce CPU usage.
6. Confirm the Low CPU alarm terminates an instance after the cooldown period.

---

## ✅ Benefits

- Automatic Recovery
- Automatic Scaling
- High Availability
- Cost Optimization
- Zero Downtime
- CloudWatch Integration
- Production Ready
- Fully Automated Infrastructure

---
# 🚀 Deployment Guide

Follow the deployment sequence below to provision the complete AWS infrastructure successfully.

---

## 📌 Deployment Order

```text
1️⃣ Amazon VPC

        │

        ▼

2️⃣ Security Groups

        │

        ▼

3️⃣ IAM

        │

        ▼

4️⃣ Amazon EC2

        │

        ▼

5️⃣ Amazon EBS

        │

        ▼

6️⃣ Amazon S3

        │

        ▼

7️⃣ Application Load Balancer

        │

        ▼

8️⃣ Auto Scaling Group
```

---

# ⚙️ Terraform Commands

Each project follows the same Terraform workflow.

## 1️⃣ Initialize Terraform

```bash
terraform init
```

Downloads the required providers and initializes the working directory.

---

## 2️⃣ Format Terraform Files

```bash
terraform fmt
```

Formats all Terraform files according to Terraform standards.

---

## 3️⃣ Validate Configuration

```bash
terraform validate
```

Checks the configuration for syntax and logical errors.

---

## 4️⃣ Review Execution Plan

```bash
terraform plan
```

Displays the infrastructure changes Terraform will make before deployment.

---

## 5️⃣ Deploy Infrastructure

```bash
terraform apply
```

or

```bash
terraform apply -auto-approve
```

Creates all AWS resources.

---

## 6️⃣ View Outputs

```bash
terraform output
```

Displays useful information such as:

- Resource IDs
- Public IPs
- ARNs
- DNS Names
- Bucket Names
- Launch Template IDs
- Auto Scaling Group Names

---

## 7️⃣ Destroy Infrastructure

```bash
terraform destroy
```

or

```bash
terraform destroy -auto-approve
```

Deletes all resources managed by the current Terraform project.

---

# 🗑️ Destroy Complete Repository

Destroy resources in reverse dependency order.

```text
Auto Scaling Group

↓

Application Load Balancer

↓

Amazon S3

↓

Amazon EBS

↓

Amazon EC2

↓

IAM

↓

Security Groups

↓

Amazon VPC
```

---

# 🔍 AWS Verification Checklist

After deployment verify each service in the AWS Console.

---

## 🌐 Amazon VPC

- VPC Created
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables

---

## 🛡️ Security Groups

- Web Security Group
- Application Security Group
- Database Security Group

---

## 🔐 IAM

- IAM User
- Access Keys
- Console Login
- Policies

---

## 🖥️ Amazon EC2

- Ubuntu Instance Running
- Elastic IP Attached
- Security Group Attached
- Key Pair Assigned
- UserData Executed

---

## 💾 Amazon EBS

- Root Volume
- Additional Volume
- Snapshot
- Attached to EC2

---

## 🪣 Amazon S3

- Bucket Created
- Encryption Enabled
- Versioning Enabled
- Object Uploaded

---

## ⚖️ Application Load Balancer

- ALB Active
- Listener Running
- Target Group Healthy
- ALB DNS Accessible

---

## 📈 Auto Scaling Group

- Launch Template
- ASG Created
- Desired Capacity
- Minimum Capacity
- Maximum Capacity
- CloudWatch Alarms
- Scale Policies

---

# 📋 Expected Outputs

Each project produces useful Terraform outputs.

Examples include:

- VPC ID
- Subnet IDs
- Internet Gateway ID
- Security Group IDs
- IAM User
- Access Key
- EC2 Instance ID
- Elastic IP
- SSH Command
- Root Volume ID
- EBS Volume ID
- Snapshot ID
- Bucket Name
- Bucket ARN
- Object URL
- ALB DNS Name
- Target Group ARN
- Launch Template ID
- Auto Scaling Group Name
- CloudWatch Alarm Names

---

# 🛠️ Troubleshooting

## Terraform Initialization

```bash
terraform init
```

Problem

```text
Provider not found
```

Solution

```bash
terraform init -upgrade
```

---

## Validation Errors

```bash
terraform validate
```

Problem

```text
Unexpected attribute
```

Solution

Check

- variables.tf
- terraform.tfvars

Ensure every variable exists.

---

## Plan Errors

Problem

```text
Reference not found
```

Solution

Verify

- Resource Names
- Variable Names
- Outputs

---

## Apply Errors

Problem

```text
Resource already exists
```

Solution

- Import the resource
- Delete duplicate resources
- Update Terraform State

---

## EC2 SSH Issues

Verify

- Security Group allows Port 22
- Elastic IP is attached
- Correct Key Pair
- SSH Command

Example

```bash
ssh -i keys/won-bills-key.pem ubuntu@<Elastic-IP>
```

---

## ALB Health Check Failure

Verify

- EC2 Running
- Application Running
- Listener Port
- Target Group Port
- Security Group Rules

---

## Auto Scaling Issues

Verify

- Launch Template
- AMI
- Key Pair
- Target Group
- Subnets
- Security Group

---

## S3 Upload Issues

Verify

- Bucket Exists
- Region Correct
- IAM Permissions
- Bucket Policy

---

# 🔐 Best Practices

- Keep Terraform State Secure
- Never Commit Secrets
- Use Remote State in Production
- Enable State Locking
- Encrypt EBS Volumes
- Enable S3 Versioning
- Apply Least Privilege IAM Policies
- Use Security Groups Carefully
- Tag Every Resource
- Keep Modules Independent
- Validate Before Apply
- Review Plan Before Deployment
- Destroy Unused Infrastructure
- Rotate IAM Credentials
- Enable Multi-Factor Authentication

---

# 📚 Technologies Used

| Technology | Purpose |
|------------|---------|
| Terraform | Infrastructure as Code |
| Amazon Web Services | Cloud Platform |
| Ubuntu 24.04 | Operating System |
| Amazon VPC | Networking |
| Security Groups | Firewall |
| IAM | Identity Management |
| EC2 | Compute |
| EBS | Block Storage |
| S3 | Object Storage |
| ALB | Load Balancing |
| ASG | Auto Scaling |
| CloudWatch | Monitoring |

---

# 👨‍💻 Author

**Manohar**

**Cloud & DevOps Engineer**

### Skills

- Terraform
- Amazon Web Services
- Linux
- Docker
- Kubernetes
- Jenkins
- GitHub Actions
- Nginx
- CI/CD
- Infrastructure as Code

---

# ⭐ Repository Highlights

✅ Production Ready

✅ Modular Terraform Design

✅ Infrastructure as Code

✅ AWS Best Practices

✅ Secure Architecture

✅ High Availability

✅ Automatic Scaling

✅ Fully Documented

✅ Easy to Learn

✅ Easy to Maintain

---

# 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

If you find an issue or have an enhancement, feel free to open an Issue or submit a Pull Request.

---

# 📄 License

This project is licensed under the MIT License.

---

<div align="center">

## ⭐ If you found this repository helpful, consider giving it a Star!

**Happy Learning • Happy Terraforming • Happy Cloud Computing ☁️🚀**

</div>
# 📊 Complete AWS Infrastructure Summary

| Module | AWS Service | Purpose | Status |
|---------|-------------|:--------|:------:|
| 01 | Amazon VPC | Networking | ✅ |
| 02 | Security Groups | Firewall | ✅ |
| 03 | IAM | Identity & Access Management | ✅ |
| 04 | EC2 | Virtual Server | ✅ |
| 05 | EBS | Block Storage | ✅ |
| 06 | S3 | Object Storage | ✅ |
| 07 | Application Load Balancer | Traffic Distribution | ✅ |
| 08 | Auto Scaling Group | Automatic Scaling | ✅ |

---

# 🔄 Complete Infrastructure Flow

```text
                 User Request

                      │

                      ▼

                 Internet

                      │

                      ▼

             Internet Gateway

                      │

                      ▼

        Application Load Balancer

                      │

                      ▼

               Target Group

          ┌───────────┴───────────┐

          ▼                       ▼

     EC2 Instance 1          EC2 Instance 2

          ▲                       ▲

          └──────────┬────────────┘

                     ▼

          Auto Scaling Group

                     ▼

            Launch Template

                     ▼

       Security Group + UserData

                     ▼

           Root EBS + Extra EBS

                     ▼

                 Amazon S3

                     ▼

              CloudWatch Alarms

                     ▼

            Scale Out / Scale In
```

---

# 📁 Project Execution Order

| Step | Module | Execute |
|------|---------|---------|
| 1 | VPC | ✅ |
| 2 | Security Groups | ✅ |
| 3 | IAM | ✅ |
| 4 | EC2 | ✅ |
| 5 | EBS | ✅ |
| 6 | S3 | ✅ |
| 7 | ALB | ✅ |
| 8 | ASG | ✅ |

---

# 🗑️ Destroy Order

Always destroy resources in reverse dependency order.

```text
ASG

↓

ALB

↓

S3

↓

EBS

↓

EC2

↓

IAM

↓

Security Groups

↓

VPC
```

---

# 📌 Repository Features

- ✅ Modular Terraform Projects
- ✅ Independent State Files
- ✅ AWS Best Practices
- ✅ Production-Ready Architecture
- ✅ Infrastructure as Code (IaC)
- ✅ Secure Networking
- ✅ Automatic Scaling
- ✅ Load Balancing
- ✅ Persistent Storage
- ✅ Object Storage
- ✅ Cloud Monitoring
- ✅ Easy Deployment
- ✅ Easy Cleanup
- ✅ Reusable Configuration
- ✅ GitHub Portfolio Ready

---

# 🏆 Learning Outcomes

After completing this repository you will understand:

- Amazon VPC
- Public & Private Subnets
- Route Tables
- Internet Gateway
- Security Groups
- IAM Users & Access Keys
- EC2
- Elastic IP
- User Data
- EBS Volumes
- EBS Snapshots
- Amazon S3
- ALB
- Target Groups
- Listeners
- Launch Templates
- Auto Scaling Groups
- CloudWatch Alarms
- Terraform Variables
- Terraform Outputs
- Terraform Data Sources
- Terraform Dependencies
- Infrastructure as Code Best Practices

---

# ⭐ Final Result

This repository demonstrates a complete AWS infrastructure built with Terraform, including networking, security, identity, compute, storage, load balancing, monitoring, and automatic scaling.

It serves as a practical DevOps portfolio project and a reusable foundation for deploying production-style AWS environments.

---

<div align="center">

## 🚀 Built with Terraform & AWS

**Infrastructure as Code • DevOps • Cloud Engineering**

⭐ **If you found this repository useful, please consider starring it on GitHub!**

</div>