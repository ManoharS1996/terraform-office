<div align="center">

# 🚀 Terraform AWS Infrastructure Repository

### 🌩️ Enterprise Infrastructure as Code (IaC) using Terraform & Amazon Web Services

Build, Deploy, and Manage Production-Ready AWS Infrastructure using Modular Terraform Projects.

---

![Terraform](https://img.shields.io/badge/Terraform-v1.8+-623CE4?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/Amazon_AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge&logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-green?style=for-the-badge&logo=linux)
![DevOps](https://img.shields.io/badge/DevOps-Terraform-blue?style=for-the-badge)
![IaC](https://img.shields.io/badge/Infrastructure_as_Code-Terraform-7B42BC?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)

---

### 📦 Repository Includes

🖥️ Amazon EC2 • 🌐 Amazon VPC • 🪣 Amazon S3 • 🔐 AWS IAM • 🛡️ Security Groups • 💾 Amazon EBS

---

### 🎯 Project Goal

Design and deploy secure, scalable, and reusable AWS infrastructure using Terraform with production-oriented best practices.

</div>

---

# 📖 Overview

This repository contains **modular Terraform projects** for deploying and managing AWS infrastructure.

Each AWS service is organized into an independent Terraform project, making the repository easy to understand, maintain, and extend.

The infrastructure follows Infrastructure as Code (IaC) principles and uses reusable variables, consistent tagging, and a production-ready folder structure.

---

# ✨ Key Features

- 🚀 Infrastructure as Code (Terraform)
- ☁️ Amazon Web Services (AWS)
- 🌐 Production-Ready VPC Networking
- 🖥️ Ubuntu 24.04 EC2 Deployment
- 💾 Amazon EBS Storage
- 🪣 Secure Amazon S3 Buckets
- 🔐 AWS IAM Users, Roles & Policies
- 🛡️ Security Groups
- 🏷️ Standard Resource Tagging
- 🔄 Reusable Terraform Modules
- 📦 Modular Project Structure
- ⚡ Easy Deployment
- 📖 Well Documented

---

# 📊 Current Project Status

| AWS Service | Status |
|-------------|:------:|
| 🖥️ Amazon EC2 | ✅ Completed |
| 🌐 Amazon VPC | ✅ Completed |
| 🪣 Amazon S3 | ✅ Completed |
| 🔐 AWS IAM | ✅ Completed |
| 🛡️ Security Groups | ✅ Completed |
| 💾 Amazon EBS | ✅ Completed |
| ⚖️ Application Load Balancer | 🚧 Planned |
| 📈 Auto Scaling Group | 🚧 Planned |

---
# 📚 Table of Contents

- [📖 Overview](#-overview)
- [✨ Key Features](#-key-features)
- [🏗️ AWS Architecture](#️-aws-architecture)
- [📦 Repository Structure](#-repository-structure)
- [☁️ AWS Services](#️-aws-services)
- [🚀 Infrastructure Workflow](#-infrastructure-workflow)
- [🖥️ EC2 Project](#️-ec2-project)
- [🌐 VPC Project](#-vpc-project)
- [🪣 S3 Project](#-s3-project)
- [🔐 IAM Project](#-iam-project)
- [🛡️ Security Groups Project](#️-security-groups-project)
- [💾 EBS Project](#-ebs-project)
- [⚙️ Terraform Commands](#️-terraform-commands)
- [🚀 Deployment Workflow](#-deployment-workflow)
- [📁 Terraform File Explanation](#-terraform-file-explanation)
- [📊 Outputs](#-outputs)
- [🛠️ Best Practices](#️-best-practices)
- [❗ Troubleshooting](#-troubleshooting)
- [🗺️ Roadmap](#️-roadmap)
- [👨‍💻 Author](#-author)

---

# 📦 Repository Structure

```text
terraform-office/
│
├── 📁 EC2/
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
├── 📁 VPC/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 S3/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 IAM/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── iam.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 Security-Groups/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── security-group.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 EBS/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── ebs.tf
│   ├── outputs.tf
│   └── README.md
│
├── 📁 ALB/            🚧 Planned
│
├── 📁 ASG/            🚧 Planned
│
├── .gitignore
├── README.md
└── LICENSE
```

---

# ☁️ AWS Services Included

| AWS Service | Purpose | Status |
|-------------|---------|:------:|
| 🖥️ Amazon EC2 | Virtual Machine Hosting | ✅ |
| 🌐 Amazon VPC | Network Infrastructure | ✅ |
| 🪣 Amazon S3 | Object Storage | ✅ |
| 🔐 AWS IAM | Identity & Access Management | ✅ |
| 🛡️ Security Groups | Network Firewall | ✅ |
| 💾 Amazon EBS | Persistent Block Storage | ✅ |
| ⚖️ Application Load Balancer | Traffic Distribution | 🚧 |
| 📈 Auto Scaling Group | High Availability | 🚧 |

---

# 🎯 Repository Design Principles

This repository is built using modern Infrastructure as Code (IaC) practices.

### Design Goals

- 📦 Modular Terraform Projects
- 🔁 Reusable Infrastructure
- 🔒 Secure AWS Resources
- 🏷️ Standard Resource Tagging
- 📖 Easy Documentation
- ⚙️ Production-Oriented Structure
- 🚀 Simple Deployment Process
- 📈 Easy Scalability

---
# 🏗️ AWS Infrastructure Architecture

The following diagram illustrates how the AWS services in this repository work together to provide a secure, scalable, and production-ready infrastructure.

```text
                                         🌍 Internet
                                              │
                                              │
                                    ┌──────────────────┐
                                    │ Internet Gateway │
                                    └────────┬─────────┘
                                             │
                                      Route Table
                                             │
                                    Public Subnet (VPC)
                                             │
                    ┌────────────────────────┴────────────────────────┐
                    │                                                 │
             🛡️ Web Security Group                            🔐 IAM Role
          (22, 80, 443 Allowed)                      (AWS Resource Access)
                    │                                                 │
                    └────────────────────────┬────────────────────────┘
                                             │
                                    🖥️ Ubuntu EC2 Server
                                             │
        ┌─────────────────────────────┬──────────────────────────────┐
        │                             │                              │
        │                             │                              │
   💾 Amazon EBS                 🪣 Amazon S3                  ☁ AWS Services
 Persistent Storage             Object Storage               CloudWatch / SSM
        │                             │                              │
        │                             │                              │
  Application Data             Images / PDFs / Logs          Monitoring & Access
        │
        │
 Docker Containers
 Java 17
 Node.js
 PM2
```

---

# 🚀 Infrastructure Workflow

The infrastructure follows a logical deployment order.

```text
Terraform Code

        │

        ▼

AWS Provider

        │

        ▼

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

Ubuntu EC2

        │

        ▼

Amazon EBS

        │

        ▼

IAM Role

        │

        ▼

Amazon S3
```

---

# 🔄 AWS Resource Relationships

## 🌐 Amazon VPC

The Virtual Private Cloud (VPC) acts as the foundation of the infrastructure.

Responsibilities

- Private Network
- IP Address Management
- Subnets
- Route Tables
- Internet Connectivity

---

## 🌍 Internet Gateway

Provides Internet connectivity to resources deployed inside public subnets.

Without an Internet Gateway:

- SSH will not work
- HTTP/HTTPS will not work
- Package installation will fail

---

## 🛣 Route Tables

Route Tables define how network traffic flows inside the VPC.

Example

```text
0.0.0.0/0

↓

Internet Gateway
```

---

## 🛡 Security Groups

Security Groups protect EC2 instances.

### Web Security Group

Allowed

- SSH (22)
- HTTP (80)
- HTTPS (443)

```text
Internet

↓

Web Security Group

↓

EC2
```

---

### Application Security Group

Allowed

- Node.js (3000)
- Spring Boot (8080)
- Custom Apps (5000)

Only accessible from the Web Security Group.

```text
Web SG

↓

Application SG
```

---

### Database Security Group

Allowed

- MySQL
- PostgreSQL
- MongoDB
- Redis

Only accessible from the Application Security Group.

```text
Application SG

↓

Database SG
```

---

# 🖥 Amazon EC2 Workflow

Amazon EC2 hosts the application server.

The `userdata.sh` script automatically installs:

- Ubuntu Updates
- Java 17
- Node.js
- npm
- Docker
- Docker Compose
- PM2
- AWS CLI
- Git

Workflow

```text
Launch EC2

↓

Run userdata.sh

↓

Install Dependencies

↓

Configure Server

↓

Deploy Application
```

---

# 💾 Amazon EBS Workflow

Amazon EBS provides persistent storage for EC2.

Workflow

```text
Create Volume

↓

Attach to EC2

↓

Format Volume

↓

Mount Storage

↓

Store Application Data

↓

Create Snapshot

↓

Restore if Required
```

Typical Storage

- Docker Volumes
- Uploads
- Application Logs
- Database Files
- Backups

---

# 🪣 Amazon S3 Workflow

Amazon S3 stores files independently of EC2.

Workflow

```text
Application

↓

Upload File

↓

Amazon S3

↓

Store Objects

↓

Download Anytime
```

Common Use Cases

- Images
- PDFs
- Videos
- Backups
- Static Website Files

---

# 🔐 IAM Workflow

IAM controls authentication and authorization.

```text
IAM User

↓

IAM Group

↓

IAM Policy

↓

IAM Role

↓

EC2 Instance

↓

AWS Resources
```

Benefits

- No hardcoded AWS credentials
- Secure access to S3
- Secure access to CloudWatch
- Secure access to Systems Manager

---

# 🎯 Why This Architecture?

This design provides:

- ✅ Secure Networking
- ✅ Modular Infrastructure
- ✅ Persistent Storage
- ✅ Object Storage
- ✅ Secure Authentication
- ✅ Reusable Terraform Modules
- ✅ Production-Ready Design
- ✅ Easy Scaling
# 📦 Infrastructure Modules

This repository is organized into independent Terraform modules. Each module is responsible for provisioning a specific AWS service and follows Infrastructure as Code (IaC) best practices.

---

# 🖥️ Amazon EC2

Amazon EC2 provides scalable virtual servers to host applications and services.

## 🎯 Purpose

Deploy a production-ready Ubuntu server with all required software installed automatically.

## 📦 Resources Created

- Ubuntu 24.04 LTS EC2 Instance
- Elastic IP
- EC2 Key Pair
- Root EBS Volume
- Additional EBS Volume
- User Data Script
- Outputs

## ⚙️ Software Installed

- Java 17
- Node.js
- npm
- Docker Engine
- Docker Compose
- PM2
- Git
- AWS CLI
- curl
- wget
- unzip
- tree
- htop

## 🔄 Workflow

```text
Terraform

↓

EC2 Instance

↓

Elastic IP

↓

User Data

↓

Java

↓

Node.js

↓

Docker

↓

Application
```

---

# 🌐 Amazon VPC

Amazon Virtual Private Cloud (VPC) provides an isolated network for AWS resources.

## 🎯 Purpose

Create secure networking for all infrastructure resources.

## 📦 Resources Created

- VPC
- Public Subnet
- Private Subnets
- Internet Gateway
- Route Tables
- Route Table Associations

## 🔄 Workflow

```text
AWS

↓

VPC

↓

Subnets

↓

Route Tables

↓

Internet Gateway

↓

Internet Access
```

## ✅ Benefits

- Secure Networking
- Private Infrastructure
- Custom IP Ranges
- High Availability
- Easy Scalability

---

# 🪣 Amazon S3

Amazon S3 provides secure and durable object storage.

## 🎯 Purpose

Store files independently from EC2.

## 📦 Resources Created

- S3 Bucket
- Versioning
- Server Side Encryption
- Ownership Controls
- Public Access Block
- Sample Object Upload

## Common Use Cases

- Images
- Documents
- PDFs
- Videos
- Static Website Files
- Application Backups
- Log Storage

## 🔄 Workflow

```text
Application

↓

Upload

↓

Amazon S3

↓

Store Objects

↓

Retrieve Objects
```

---

# 🔐 AWS IAM

AWS Identity and Access Management controls access to AWS resources.

## 🎯 Purpose

Manage authentication and authorization securely.

## 📦 Resources Created

- IAM User
- IAM Group
- IAM Policy
- IAM Role
- Policy Attachments
- EC2 Instance Profile

## 🔄 Workflow

```text
IAM User

↓

IAM Group

↓

IAM Policy

↓

IAM Role

↓

EC2 Instance

↓

AWS Services
```

## ✅ Benefits

- Least Privilege Access
- Secure Authentication
- Centralized Permission Management
- Role-Based Access Control

---

# 🛡️ Security Groups

Security Groups act as virtual firewalls for AWS resources.

## 🎯 Purpose

Control inbound and outbound traffic for EC2 instances.

---

## 🌍 Web Security Group

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

EC2
```

---

## ⚙️ Application Security Group

### Allowed Ports

| Port | Service |
|------|----------|
| 3000 | Node.js |
| 5000 | Custom Application |
| 8080 | Spring Boot |

Traffic Allowed From

- Web Security Group

---

## 🗄️ Database Security Group

### Allowed Ports

| Port | Database |
|------|------------|
| 3306 | MySQL |
| 5432 | PostgreSQL |
| 27017 | MongoDB |
| 6379 | Redis |

Traffic Allowed From

- Application Security Group

---

## 🔄 Security Flow

```text
Internet

↓

Web Security Group

↓

Application Security Group

↓

Database Security Group
```

---

# 💾 Amazon EBS

Amazon Elastic Block Store provides persistent block storage for EC2 instances.

## 🎯 Purpose

Provide high-performance storage for applications and data.

## 📦 Resources Created

- GP3 EBS Volume
- Encrypted Storage
- Volume Attachment
- EBS Snapshot
- Outputs

## Why Use EBS?

- Persistent Storage
- High Performance SSD
- Data Encryption
- Automatic Snapshots
- Backup & Recovery
- Independent of EC2 Lifecycle

---

## 🔄 EBS Workflow

```text
Create Volume

↓

Attach to EC2

↓

Format Disk

↓

Mount Volume

↓

Store Data

↓

Create Snapshot

↓

Restore When Needed
```

---

## 💾 EC2 + EBS Relationship

Every EC2 instance requires storage.

```text
Ubuntu EC2

│

├── Root Volume
│      │
│      └── Operating System
│
└── Additional EBS Volume
       │
       ├── Docker Data
       ├── Application Logs
       ├── Uploads
       ├── Database Files
       └── Backups
```

---

# 🔗 Module Dependencies

```text
VPC
 │
 ▼
Subnets
 │
 ▼
Route Tables
 │
 ▼
Internet Gateway
 │
 ▼
Security Groups
 │
 ▼
EC2
 │
 ├───────────────┐
 │               │
 ▼               ▼
EBS             IAM Role
 │               │
 ▼               ▼
Application     AWS Services
 │
 ▼
Amazon S3
```

---

# 🎯 Infrastructure Benefits

- ✅ Modular Terraform Projects
- ✅ Production-Ready Architecture
- ✅ Infrastructure as Code
- ✅ Secure Networking
- ✅ Persistent Storage
- ✅ Secure Authentication
- ✅ Easy Maintenance
- ✅ Easy Scaling
- ✅ Standard Resource Tagging
- ✅ Reusable Modules

---
# 🚀 Deployment Guide

Follow these steps to deploy any Terraform module in this repository.

---

# 📌 Step 1 — Clone Repository

Clone the repository to your local machine.

```bash
git clone https://github.com/<your-username>/terraform-office.git
```

Navigate into the repository.

```bash
cd terraform-office
```

---

# 📌 Step 2 — Choose a Project

Navigate to the AWS service you want to deploy.

Example

```bash
cd EC2
```

or

```bash
cd VPC
```

or

```bash
cd S3
```

or

```bash
cd IAM
```

or

```bash
cd Security-Groups
```

or

```bash
cd EBS
```

---

# 📌 Step 3 — Configure Variables

Update the `terraform.tfvars` file.

Example

```hcl
aws_region = "ap-south-1"

project_name = "WON Bills"

environment = "dev"
```

---

# 📌 Step 4 — Configure AWS Credentials

Either configure the AWS CLI:

```bash
aws configure
```

or create a `.env` file:

```env
AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxxx

AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxx

AWS_REGION=ap-south-1
```

---

# 📌 Step 5 — Initialize Terraform

Initialize the project.

```bash
terraform init
```

Terraform downloads all required providers.

Example

```text
AWS Provider

TLS Provider

Random Provider

Local Provider
```

---

# 📌 Step 6 — Format Terraform Files

```bash
terraform fmt
```

Purpose

- Standard formatting
- Easy readability
- Best practice before commit

---

# 📌 Step 7 — Validate Configuration

```bash
terraform validate
```

Example Output

```text
Success!

The configuration is valid.
```

---

# 📌 Step 8 — Review Infrastructure

```bash
terraform plan
```

Terraform displays all resources that will be created.

Example

```text
Plan:

12 to add

0 to change

0 to destroy
```

---

# 📌 Step 9 — Deploy Infrastructure

Interactive Deployment

```bash
terraform apply
```

Automatic Deployment

```bash
terraform apply -auto-approve
```

Terraform creates the AWS infrastructure.

---

# 📌 Step 10 — Display Outputs

```bash
terraform output
```

Example

```text
EC2 Public IP

Elastic IP

VPC ID

Bucket Name

IAM Role ARN

Security Group ID

Volume ID
```

---

# 📌 Step 11 — View Terraform State

```bash
terraform show
```

Displays

- Resources
- Dependencies
- Outputs
- Current State

---

# 📌 Step 12 — List Managed Resources

```bash
terraform state list
```

Example

```text
aws_instance.server

aws_vpc.main

aws_s3_bucket.bucket

aws_iam_role.role

aws_security_group.web
```

---

# 📌 Step 13 — Destroy Infrastructure

Interactive

```bash
terraform destroy
```

Automatic

```bash
terraform destroy -auto-approve
```

Deletes all resources created by Terraform.

---

# ⚙️ Terraform Command Reference

| Command | Description |
|----------|-------------|
| `terraform version` | Show installed Terraform version |
| `terraform fmt` | Format Terraform files |
| `terraform fmt -recursive` | Format all Terraform files recursively |
| `terraform init` | Initialize Terraform project |
| `terraform init -upgrade` | Upgrade provider plugins |
| `terraform validate` | Validate Terraform configuration |
| `terraform plan` | Preview infrastructure changes |
| `terraform plan -out=tfplan` | Save execution plan |
| `terraform apply` | Apply infrastructure changes |
| `terraform apply -auto-approve` | Apply without confirmation |
| `terraform output` | Display outputs |
| `terraform show` | Display current state |
| `terraform state list` | List managed resources |
| `terraform state show <resource>` | Display a specific resource |
| `terraform providers` | List configured providers |
| `terraform workspace list` | List workspaces |
| `terraform workspace new <name>` | Create a workspace |
| `terraform workspace select <name>` | Switch workspace |
| `terraform graph` | Display dependency graph |
| `terraform destroy` | Destroy infrastructure |
| `terraform destroy -auto-approve` | Destroy without confirmation |

---

# 🔄 Complete Terraform Workflow

```text
Write Terraform Code
        │
        ▼
terraform fmt
        │
        ▼
terraform init
        │
        ▼
terraform validate
        │
        ▼
terraform plan
        │
        ▼
terraform apply
        │
        ▼
terraform output
        │
        ▼
terraform show
        │
        ▼
terraform destroy
```

---

# 💡 Best Practices During Deployment

- Always run `terraform fmt` before committing code.
- Validate the configuration before creating resources.
- Review the execution plan before applying changes.
- Store sensitive values outside the repository.
- Use descriptive resource names and tags.
- Use remote state storage for production environments.
- Keep provider versions updated.
- Destroy temporary infrastructure to avoid unnecessary AWS costs.

---
# 📁 Terraform File Explanation

Each Terraform project follows a consistent file structure to improve readability, maintenance, and reusability.

| File | Purpose |
|------|---------|
| `versions.tf` | Defines the required Terraform version and provider versions. |
| `provider.tf` | Configures the AWS provider and default resource tags. |
| `variables.tf` | Declares reusable input variables. |
| `terraform.tfvars` | Provides values for variables. |
| `network.tf` | Creates networking resources such as VPC, Subnets, IGW, and Route Tables. |
| `compute.tf` | Creates the EC2 instance and related resources. |
| `keypair.tf` | Generates and uploads the EC2 SSH key pair. |
| `userdata.sh` | Installs software automatically during EC2 launch. |
| `security-group.tf` | Creates Security Groups and firewall rules. |
| `iam.tf` | Creates IAM Users, Roles, Groups, and Policies. |
| `s3.tf` | Creates Amazon S3 buckets and related configurations. |
| `ebs.tf` | Creates and attaches EBS volumes to EC2 instances. |
| `outputs.tf` | Displays important resource information after deployment. |
| `.gitignore` | Excludes sensitive and generated files from Git. |
| `README.md` | Project documentation and deployment guide. |

---

# 📂 Example Folder Structure

```text
terraform-office/
│
├── EC2/
│
├── VPC/
│
├── S3/
│
├── IAM/
│
├── Security-Groups/
│
├── EBS/
│
├── ALB/                 (Upcoming)
│
├── ASG/                 (Upcoming)
│
├── README.md
│
└── .gitignore
```

---

# 📤 Example Outputs

After a successful deployment, Terraform displays useful outputs.

### EC2

```text
Instance ID

Public IP

Private IP

Elastic IP

SSH Command
```

### VPC

```text
VPC ID

Public Subnet ID

Private Subnet ID

Internet Gateway ID

Route Table ID
```

### S3

```text
Bucket Name

Bucket ARN

Bucket Region

Object URL
```

### IAM

```text
IAM User ARN

IAM Role ARN

IAM Policy ARN

Instance Profile
```

### Security Groups

```text
Web Security Group ID

Application Security Group ID

Database Security Group ID
```

### EBS

```text
Volume ID

Snapshot ID

Device Name

Volume Size

IOPS

Throughput
```

---

# 🛠 Troubleshooting

## Terraform Initialization Error

```text
Provider installation failed
```

### Solution

```bash
terraform init
```

---

## Configuration Validation Error

```text
Configuration is invalid
```

### Solution

```bash
terraform validate
```

---

## Invalid AWS Credentials

```text
InvalidClientTokenId
```

### Solution

- Verify AWS Access Key
- Verify AWS Secret Key
- Verify AWS Region

---

## S3 Bucket Already Exists

```text
BucketAlreadyExists
```

### Solution

Amazon S3 bucket names are globally unique. Use a unique bucket name.

---

## Invalid VPC ID

```text
InvalidVpcID.NotFound
```

### Solution

Verify the VPC exists in the selected AWS Region or use the correct VPC ID.

---

## EBS Attachment Error

```text
Attachment point already in use
```

### Solution

Attach the EBS volume using an unused device name such as:

```text
/dev/sdg

/dev/sdh

/dev/sdi
```

---

## Security Group Error

```text
InvalidGroup.NotFound
```

### Solution

Ensure the VPC ID is correct and the Security Group exists in the same region.

---

# 🛡 Best Practices

## Terraform

- Use Infrastructure as Code (IaC)
- Keep modules independent
- Use reusable variables
- Always run `terraform fmt`
- Validate before deployment
- Review the execution plan
- Store state securely
- Use remote backends in production

---

## AWS

- Follow the Principle of Least Privilege (IAM)
- Use Security Groups instead of opening all ports
- Encrypt EBS volumes
- Enable S3 Versioning
- Enable Server-Side Encryption
- Use IAM Roles for EC2
- Apply consistent tags to all resources
- Delete unused infrastructure to reduce costs

---

# 📈 Project Roadmap

## ✅ Completed

- Amazon EC2
- Amazon VPC
- Amazon S3
- AWS IAM
- Security Groups
- Amazon EBS

---

## 🚧 Upcoming

- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Route 53
- ACM Certificates
- CloudWatch
- SNS
- Lambda
- RDS
- CloudFront
- WAF

---

# 📊 Repository Progress

| Module | Status |
|---------|:------:|
| Amazon EC2 | ✅ Completed |
| Amazon VPC | ✅ Completed |
| Amazon S3 | ✅ Completed |
| AWS IAM | ✅ Completed |
| Security Groups | ✅ Completed |
| Amazon EBS | ✅ Completed |
| Application Load Balancer | 🚧 Planned |
| Auto Scaling Group | 🚧 Planned |

---

# 💻 Technologies Used

## Infrastructure as Code

- Terraform

## Cloud Platform

- Amazon Web Services (AWS)

## Compute

- Amazon EC2

## Networking

- Amazon VPC
- Internet Gateway
- Route Tables
- Security Groups

## Storage

- Amazon EBS
- Amazon S3

## Identity & Security

- AWS IAM

## Operating System

- Ubuntu 24.04 LTS

## Tools

- Git
- Docker
- Docker Compose
- Java 17
- Node.js
- PM2
- AWS CLI

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Push to your branch.
5. Create a Pull Request.

---

# 👨‍💻 Author

**Manohar**

**Project:** Terraform AWS Infrastructure Repository

**Cloud Platform:** Amazon Web Services (AWS)

**Infrastructure as Code:** Terraform

---

# 📄 License

This project is intended for learning, internal infrastructure automation, and demonstration of Terraform-based AWS deployments.

---

<div align="center">

# ⭐ Thank You

If you found this repository useful, consider giving it a ⭐ on GitHub.

### 🚀 Happy Terraforming!

Built with ❤️ using **Terraform** and **Amazon Web Services**

</div>