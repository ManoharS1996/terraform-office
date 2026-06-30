# 🚀 Terraform AWS Infrastructure Repository

<div align="center">

# 🌩️ WON Bills - AWS Infrastructure as Code (IaC)

### Enterprise AWS Infrastructure using Terraform

Build, Deploy, and Manage AWS Infrastructure on Amazon Web Services using Terraform with modular, reusable, and production-oriented configurations.

---

![Terraform](https://img.shields.io/badge/Terraform-v1.8+-623CE4?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/Amazon_AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge&logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-green?style=for-the-badge&logo=linux)
![IaC](https://img.shields.io/badge/Infrastructure_as_Code-Terraform-blue?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-AWS-orange?style=for-the-badge)

</div>

---

# 📖 Overview

This repository contains production-ready Terraform projects developed for the **WON Bills** application.

The infrastructure is organized into separate projects, allowing each AWS service to be deployed, maintained, and updated independently while following Infrastructure as Code (IaC) best practices.

Each module is reusable, easy to maintain, and designed using Terraform's recommended project structure.

---

# 🎯 Project Objectives

- Automate AWS Infrastructure
- Infrastructure as Code (IaC)
- Modular Terraform Projects
- Reusable Variables
- Production-Oriented Configuration
- Resource Tagging
- Easy Deployment
- Easy Maintenance
- Version Controlled Infrastructure

---

# ☁️ AWS Services Covered

| AWS Service | Description | Status |
|-------------|-------------|:------:|
| 🖥 Amazon EC2 | Ubuntu Server Deployment | ✅ Completed |
| 🌐 Amazon VPC | Networking Infrastructure | ✅ Completed |
| 🪣 Amazon S3 | Object Storage | ✅ Completed |
| 🔐 AWS IAM | Identity & Access Management | ✅ Completed |
| 🛡 Security Groups | Network Firewall Rules | ✅ Completed |
| 💾 Amazon EBS | Block Storage | 🚧 Planned |
| ⚖️ Application Load Balancer | Load Balancing | 🚧 Planned |
| 📈 Auto Scaling Group | High Availability | 🚧 Planned |

---

# 📂 Repository Structure

```text
terraform-office/
│
├── EC2/
│
├── S3/
│
├── VPC/
│
├── IAM/
│
├── Security-Groups/
│
├── EBS/
│
├── ALB/
│
├── ASG/
│
└── README.md
```

---

# 📦 Infrastructure Modules

## 🖥 Amazon EC2

Production-ready Ubuntu Server Deployment.

### Resources

- Ubuntu 24.04 LTS
- EC2 Instance
- Elastic IP
- SSH Key Pair
- Root EBS Volume
- Additional EBS Volume
- User Data Script

### Software Installed

- Java 17
- Node.js
- npm
- Docker
- Docker Compose
- PM2
- Git
- AWS CLI
- curl
- wget
- unzip
- tree
- htop

---

## 🌐 Amazon VPC

Production-ready AWS Networking.

### Resources

- VPC
- Internet Gateway
- Public Subnet
- Private Subnets
- Route Tables
- Route Table Associations

---

## 🪣 Amazon S3

Secure Object Storage.

### Resources

- S3 Bucket
- Versioning
- Server Side Encryption
- Ownership Controls
- Public Access Block
- Sample Object Upload

---

## 🔐 AWS IAM

Identity & Access Management.

### Resources

- IAM User
- IAM Group
- IAM Role
- IAM Policy
- Policy Attachment
- EC2 Instance Profile
- Password Policy

---

## 🛡 Security Groups

Production-ready network firewall configuration.

### Security Groups Created

### Web Security Group

Allowed Ports

- SSH (22)
- HTTP (80)
- HTTPS (443)

---

### Application Security Group

Allowed Ports

- Node.js (3000)
- Spring Boot (8080)
- Custom Application (5000)

Access allowed only from the Web Security Group.

---

### Database Security Group

Allowed Ports

- MySQL (3306)
- PostgreSQL (5432)
- MongoDB (27017)
- Redis (6379)

Access allowed only from the Application Security Group.

---

# 🏗 AWS Infrastructure Architecture

```text
                              AWS CLOUD
                                  │
         ┌────────────────────────┼─────────────────────────┐
         │                        │                         │
      Amazon VPC              Amazon S3                AWS IAM
         │                                                │
         │                                         IAM Users
         │                                         IAM Groups
         │                                         IAM Roles
         │                                                │
 ┌───────┴────────────────────────────────────────────────┘
 │
 │
Internet Gateway
 │
 │
Elastic IP
 │
 │
Web Security Group
(22,80,443)
 │
 │
Ubuntu EC2
 │
 │
Application Security Group
(3000,5000,8080)
 │
 │
Database Security Group
(3306,5432,27017,6379)
 │
 │
Amazon EBS
```

---

# 📁 Repository Folder Structure

```text
terraform-office/

├── EC2/
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
├── S3/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   ├── outputs.tf
│   └── README.md
│
├── VPC/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   ├── outputs.tf
│   └── README.md
│
├── IAM/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── iam.tf
│   ├── outputs.tf
│   └── README.md
│
├── Security-Groups/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── security-group.tf
│   ├── outputs.tf
│   └── README.md
│
├── EBS/
├── ALB/
├── ASG/
│
└── README.md
```

---

# ✨ Project Highlights

- Infrastructure as Code (Terraform)
- Production-Oriented Folder Structure
- Ubuntu 24.04 LTS Server
- Java 17 Installation
- Node.js LTS
- Docker Engine
- Docker Compose
- PM2 Process Manager
- AWS CLI
- Elastic IP
- Amazon EBS
- Amazon S3
- Amazon VPC
- AWS IAM
- Security Groups
- Reusable Variables
- Reusable Outputs
- Standard Resource Tagging
- Easy Deployment
- Easy Maintenance

---
# 📄 Terraform Project Files

Every project follows a consistent Terraform folder structure for easy maintenance, readability, and deployment.

---

# 📁 versions.tf

## Purpose

Defines the Terraform version and required providers used in the project.

### Responsibilities

- Specifies minimum Terraform version
- Downloads AWS Provider
- Downloads additional providers (Random, TLS, Local)
- Ensures provider compatibility

### Providers Used

| Provider | Purpose |
|----------|---------|
| AWS | Create AWS Resources |
| TLS | Generate SSH Keys |
| Local | Create Local Files |
| Random | Generate Unique Resource Names |

---

# 📁 provider.tf

## Purpose

Configures Terraform to connect with Amazon Web Services.

### Configuration

- AWS Region
- Default Tags
- Resource Metadata

### Default Tags

```text
Project

Application

Environment

Owner

ManagedBy
```

These tags are automatically applied to every supported AWS resource.

---

# 📁 variables.tf

## Purpose

Stores reusable variables used throughout the Terraform project.

### Common Variables

| Variable | Description |
|----------|-------------|
| aws_region | AWS Region |
| project_name | Project Name |
| application_name | Application Name |
| owner | Resource Owner |
| environment | Deployment Environment |
| instance_type | EC2 Instance Type |
| volume_size | Root EBS Volume |
| subnet_cidr | Subnet CIDR |
| vpc_cidr | VPC CIDR |
| bucket_name | S3 Bucket |
| iam_role | IAM Role |
| security_group | Security Group |

---

# 📁 terraform.tfvars

## Purpose

Stores actual values assigned to variables.

Example

```hcl
aws_region = "ap-south-1"

project_name = "WON Bills"

environment = "dev"
```

Advantages

- Easy Configuration
- Environment Specific Values
- Reusable Terraform Code

---

# 📁 network.tf

## Purpose

Creates AWS networking resources.

Projects

- EC2
- VPC

Resources Created

- Amazon VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables
- Route Table Associations

Architecture

```text
Internet
    │
Internet Gateway
    │
Public Route Table
    │
───────────────
│             │
Public      Public
Subnet 1    Subnet 2

Private Route Table
│              │
Private     Private
Subnet 1    Subnet 2
```

---

# 📁 compute.tf

## Purpose

Creates the Ubuntu EC2 server.

Resources

- Ubuntu 24.04 LTS
- Elastic IP
- Root EBS Volume
- Additional EBS Volume

Automatic Software Installation

- Java 17
- Node.js
- npm
- Docker
- Docker Compose
- PM2
- Git
- AWS CLI

---

# 📁 keypair.tf

## Purpose

Creates an EC2 SSH Key Pair.

Resources

- RSA 4096 Private Key
- AWS Key Pair

Generated File

```text
keys/

won-bills-key.pem
```

SSH Example

```bash
ssh -i keys/won-bills-key.pem ubuntu@PUBLIC_IP
```

---

# 📁 userdata.sh

## Purpose

Automatically configures the Ubuntu server during launch.

Installs

- Ubuntu Updates
- Java 17
- Node.js
- npm
- Docker Engine
- Docker Compose Plugin
- Git
- curl
- wget
- unzip
- zip
- tree
- vim
- htop
- net-tools
- AWS CLI
- PM2

Benefits

No manual installation required after EC2 deployment.

---

# 📁 s3.tf

## Purpose

Creates Amazon S3 infrastructure.

Resources

- Amazon S3 Bucket
- Versioning
- Server Side Encryption
- Ownership Controls
- Public Access Block
- Sample Object Upload

Features

- AES256 Encryption
- Bucket Versioning
- Secure Storage
- Standard Tagging

---

# 📁 iam.tf

## Purpose

Creates AWS Identity and Access Management resources.

Resources

- IAM User
- IAM Group
- IAM Role
- IAM Policy
- Policy Attachments
- EC2 Instance Profile
- Password Policy

Architecture

```text
EC2
 │
IAM Role
 │
 ├── Amazon S3
 ├── CloudWatch
 ├── Systems Manager
 └── EBS
```

Benefits

- Centralized Permissions
- Least Privilege Access
- Secure Authentication

---

# 📁 security-group.tf

## Purpose

Creates production-ready Security Groups.

Security Groups

### Web Security Group

Inbound

| Port | Service |
|------|----------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |

---

### Application Security Group

Inbound

| Port | Service |
|------|----------|
| 3000 | Node.js |
| 5000 | Custom App |
| 8080 | Spring Boot |

Allowed Source

```text
Web Security Group
```

---

### Database Security Group

Inbound

| Port | Database |
|------|-----------|
| 3306 | MySQL |
| 5432 | PostgreSQL |
| 27017 | MongoDB |
| 6379 | Redis |

Allowed Source

```text
Application Security Group
```

Architecture

```text
Internet

↓

Web Security Group

↓

Application Security Group

↓

Database Security Group
```

Benefits

- Layered Security
- Controlled Access
- Production Network Design

---

# 📁 outputs.tf

## Purpose

Displays important information after deployment.

EC2 Outputs

```text
Instance ID

Public IP

Elastic IP

Private IP

SSH Command
```

S3 Outputs

```text
Bucket Name

Bucket ARN

Object URL
```

VPC Outputs

```text
VPC ID

Subnet IDs

Internet Gateway ID

Route Table IDs
```

IAM Outputs

```text
IAM User ARN

IAM Role ARN

Policy ARN

Instance Profile
```

Security Group Outputs

```text
Web Security Group ID

Application Security Group ID

Database Security Group ID
```

---

# 📁 .env

## Purpose

Stores AWS credentials locally.

Example

```text
AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

AWS_REGION
```

Never commit this file to GitHub.

---

# 📁 .gitignore

## Purpose

Prevents sensitive and generated files from being committed.

Ignored Files

```text
.terraform/

terraform.tfstate

terraform.tfstate.*

.terraform.lock.hcl

.env

*.pem

keys/

.vscode/

.idea/
```

---

# 📁 README.md

## Purpose

Provides complete project documentation.

Contents

- Project Overview
- AWS Architecture
- Folder Structure
- Terraform Files
- Terraform Commands
- Deployment Guide
- Best Practices
- Troubleshooting
- Technologies Used

---

# 🔄 Terraform File Relationship

```text
terraform.tfvars
        │
        ▼
variables.tf
        │
        ▼
provider.tf
        │
        ▼
Terraform Resources
        │
        ├── network.tf
        ├── compute.tf
        ├── keypair.tf
        ├── userdata.sh
        ├── s3.tf
        ├── iam.tf
        ├── security-group.tf
        │
        ▼
outputs.tf
```

---

# 📦 Infrastructure Summary

| Module | AWS Service | Purpose |
|---------|-------------|----------|
| EC2 | Amazon EC2 | Virtual Server |
| VPC | Amazon VPC | Networking |
| S3 | Amazon S3 | Object Storage |
| IAM | AWS IAM | Identity & Access |
| Security Groups | AWS Security Groups | Network Firewall |

---
# ⚙️ Terraform Command Reference

Terraform follows a structured workflow to provision, update, and manage infrastructure.

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

# 📌 terraform version

## Purpose

Displays the installed Terraform version.

### Command

```bash
terraform version
```

### Example Output

```text
Terraform v1.13.x

on windows_amd64
```

---

# 📌 terraform fmt

## Purpose

Formats Terraform configuration files according to Terraform coding standards.

### Command

```bash
terraform fmt
```

### Format Entire Project

```bash
terraform fmt -recursive
```

### Use Case

- Format Terraform code
- Maintain consistent style
- Recommended before every commit

---

# 📌 terraform init

## Purpose

Initializes the Terraform working directory.

Downloads required provider plugins and prepares the project.

### Command

```bash
terraform init
```

### Creates

```text
.terraform/

.terraform.lock.hcl
```

### Use Case

- First project execution
- After cloning repository
- After changing providers

---

# 📌 terraform init -upgrade

## Purpose

Upgrades Terraform providers to newer versions allowed by your configuration.

### Command

```bash
terraform init -upgrade
```

### Use Case

- Upgrade AWS Provider
- Refresh provider plugins
- Keep providers up to date

---

# 📌 terraform validate

## Purpose

Validates Terraform configuration syntax.

### Command

```bash
terraform validate
```

### Successful Output

```text
Success!

The configuration is valid.
```

### Use Case

Run before `terraform plan`.

---

# 📌 terraform plan

## Purpose

Shows the execution plan without creating or modifying resources.

### Command

```bash
terraform plan
```

### Save Plan

```bash
terraform plan -out=tfplan
```

### Example Output

```text
Plan: 12 to add, 0 to change, 0 to destroy.
```

### Benefits

- Review infrastructure changes
- Prevent accidental modifications

---

# 📌 terraform apply

## Purpose

Creates or updates AWS infrastructure.

### Command

```bash
terraform apply
```

Terraform asks for confirmation before creating resources.

```text
Enter a value:

yes
```

---

# 📌 terraform apply -auto-approve

## Purpose

Creates infrastructure without confirmation.

### Command

```bash
terraform apply -auto-approve
```

### Recommended For

- CI/CD
- Jenkins
- GitHub Actions
- Azure DevOps
- Automated Deployments

---

# 📌 terraform output

## Purpose

Displays values defined in `outputs.tf`.

### Command

```bash
terraform output
```

### Show Specific Output

```bash
terraform output public_ip
```

### Example

```text
instance_id

public_ip

elastic_ip

bucket_name

vpc_id

web_security_group_id

iam_role_arn
```

---

# 📌 terraform show

## Purpose

Displays the current Terraform state.

### Command

```bash
terraform show
```

### Show Saved Plan

```bash
terraform show tfplan
```

Displays

- Resources
- Dependencies
- Outputs
- State Information

---

# 📌 terraform state list

## Purpose

Lists every resource managed by Terraform.

### Command

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

# 📌 terraform state show

## Purpose

Displays detailed information about a single resource.

### Command

```bash
terraform state show RESOURCE_NAME
```

Example

```bash
terraform state show aws_instance.server
```

---

# 📌 terraform providers

## Purpose

Displays providers used in the project.

### Command

```bash
terraform providers
```

---

# 📌 terraform workspace list

## Purpose

Lists all available workspaces.

### Command

```bash
terraform workspace list
```

---

# 📌 terraform workspace new

## Purpose

Creates a new workspace.

### Command

```bash
terraform workspace new dev
```

---

# 📌 terraform workspace select

## Purpose

Switches to an existing workspace.

### Command

```bash
terraform workspace select dev
```

---

# 📌 terraform graph

## Purpose

Generates a dependency graph of Terraform resources.

### Command

```bash
terraform graph
```

Useful for understanding resource dependencies.

---

# 📌 terraform destroy

## Purpose

Deletes all resources managed by Terraform.

### Command

```bash
terraform destroy
```

Terraform requests confirmation before destroying resources.

---

# 📌 terraform destroy -auto-approve

## Purpose

Destroys infrastructure without confirmation.

### Command

```bash
terraform destroy -auto-approve
```

### Recommended For

- Development
- Testing
- Temporary Environments

---

# 🚀 Deployment Workflow

## Step 1

Clone Repository

```bash
git clone https://github.com/<username>/terraform-office.git
```

---

## Step 2

Navigate to Project

```bash
cd EC2
```

or

```bash
cd S3
```

or

```bash
cd VPC
```

or

```bash
cd IAM
```

or

```bash
cd Security-Groups
```

---

## Step 3

Initialize Terraform

```bash
terraform init
```

---

## Step 4

Format Terraform Files

```bash
terraform fmt
```

---

## Step 5

Validate Configuration

```bash
terraform validate
```

---

## Step 6

Review Infrastructure Plan

```bash
terraform plan
```

---

## Step 7

Deploy Infrastructure

```bash
terraform apply
```

or

```bash
terraform apply -auto-approve
```

---

## Step 8

Display Outputs

```bash
terraform output
```

---

## Step 9

View State

```bash
terraform show
```

---

## Step 10

Destroy Infrastructure

```bash
terraform destroy
```

or

```bash
terraform destroy -auto-approve
```

---

# 📋 Terraform Command Summary

| Command | Description |
|----------|-------------|
| `terraform version` | Display Terraform version |
| `terraform fmt` | Format Terraform files |
| `terraform fmt -recursive` | Format all Terraform files |
| `terraform init` | Initialize Terraform |
| `terraform init -upgrade` | Upgrade providers |
| `terraform validate` | Validate configuration |
| `terraform plan` | Preview changes |
| `terraform plan -out=tfplan` | Save execution plan |
| `terraform apply` | Deploy infrastructure |
| `terraform apply -auto-approve` | Deploy without confirmation |
| `terraform output` | Display outputs |
| `terraform show` | Display Terraform state |
| `terraform state list` | List resources |
| `terraform state show` | Display resource details |
| `terraform providers` | List providers |
| `terraform workspace list` | List workspaces |
| `terraform workspace new` | Create workspace |
| `terraform workspace select` | Switch workspace |
| `terraform graph` | Generate dependency graph |
| `terraform destroy` | Destroy infrastructure |
| `terraform destroy -auto-approve` | Destroy without confirmation |

---

# 💡 Recommended Daily Workflow

```bash
terraform fmt

terraform validate

terraform plan

terraform apply

terraform output
```

For provider updates:

```bash
terraform init -upgrade
```

For infrastructure cleanup:

```bash
terraform destroy -auto-approve
```

---
# 🔐 Security Best Practices

This repository follows recommended Terraform and AWS security practices.

## Terraform

- Store Terraform code in version control.
- Validate configurations before deployment.
- Review execution plans before applying changes.
- Use meaningful resource names and tags.
- Keep Terraform providers up to date.
- Use remote state storage for team environments.
- Lock Terraform state when using a remote backend.

---

## AWS

- Follow the Principle of Least Privilege (IAM).
- Enable encryption for supported AWS resources.
- Use IAM Roles instead of long-lived access keys where possible.
- Restrict Security Group ingress rules to only required ports.
- Enable logging and monitoring using AWS CloudWatch and CloudTrail.
- Enable versioning for S3 buckets containing important data.
- Apply consistent resource tags for management and cost tracking.

---

## Sensitive Files

Do **not** commit the following files to Git:

```text
.terraform/
terraform.tfstate
terraform.tfstate.backup
terraform.tfstate.*
.terraform.lock.hcl
.env
*.pem
keys/
```

---

# 📋 Common Terraform Errors

## Provider Not Installed

### Error

```text
Failed to query available provider packages
```

### Solution

```bash
terraform init
```

---

## Invalid Configuration

### Error

```text
Configuration is invalid
```

### Solution

```bash
terraform validate
```

---

## Invalid AWS Credentials

### Error

```text
InvalidClientTokenId
```

### Solution

- Verify `AWS_ACCESS_KEY_ID`
- Verify `AWS_SECRET_ACCESS_KEY`
- Confirm the configured AWS Region

---

## Access Denied

### Error

```text
AccessDenied
```

### Solution

Ensure the IAM identity has permission to create or manage the required AWS resources.

---

## S3 Bucket Already Exists

### Error

```text
BucketAlreadyExists
```

### Solution

Amazon S3 bucket names are globally unique. Choose a different bucket name or add a unique suffix.

---

## Invalid VPC ID

### Error

```text
InvalidVpcID.NotFound
```

### Solution

- Verify the VPC exists in the selected AWS Region.
- Use the correct VPC ID or look it up dynamically using a Terraform data source.

---

## Security Group Dependency Error

### Error

```text
DependencyViolation
```

### Solution

Ensure the dependent resource (for example, an EC2 instance or network interface) has been removed before deleting the Security Group.

---

# 📊 AWS Infrastructure Summary

| Module | AWS Service | Description |
|---------|-------------|-------------|
| EC2 | Amazon EC2 | Ubuntu Virtual Machine |
| VPC | Amazon VPC | Networking Infrastructure |
| S3 | Amazon S3 | Object Storage |
| IAM | AWS IAM | Identity & Access Management |
| Security Groups | Amazon EC2 | Virtual Firewall |
| EBS *(Planned)* | Amazon EBS | Block Storage |
| ALB *(Planned)* | Elastic Load Balancing | Application Load Balancer |
| ASG *(Planned)* | Auto Scaling | Automatic Scaling |

---

# 🏗 Overall AWS Architecture

```text
                              AWS Cloud
                                  │
        ┌─────────────────────────┼─────────────────────────┐
        │                         │                         │
     Amazon VPC               Amazon S3                AWS IAM
        │                                                 │
        │                                          Users / Groups
        │                                          Roles / Policies
        │
 ┌──────┴──────────────┐
 │                     │
Public Subnet      Private Subnet
 │                     │
 │                     │
Internet Gateway       │
 │                     │
Elastic IP             │
 │                     │
Web Security Group     │
 │                     │
Ubuntu EC2             │
 │                     │
Application Security Group
 │
Database Security Group
 │
Amazon EBS
```

---

# 💻 Software Installed on EC2

The `userdata.sh` script automatically installs:

- Ubuntu Updates
- Java 17
- Node.js (LTS)
- npm
- Docker Engine
- Docker Compose Plugin
- Git
- AWS CLI
- curl
- wget
- zip
- unzip
- vim
- tree
- htop
- net-tools
- PM2

---

# 🛠 Technologies Used

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

- Amazon S3
- Amazon EBS *(Planned)*

## Identity & Security

- AWS IAM

## Operating System

- Ubuntu Server 24.04 LTS

## Development Tools

- Git
- Docker
- Docker Compose
- Java 17
- Node.js
- npm
- PM2
- AWS CLI

---

# 📈 Project Status

| Module | Status |
|---------|:------:|
| Amazon EC2 | ✅ Completed |
| Amazon S3 | ✅ Completed |
| Amazon VPC | ✅ Completed |
| AWS IAM | ✅ Completed |
| Security Groups | ✅ Completed |
| Amazon EBS | 🚧 Planned |
| Application Load Balancer | 🚧 Planned |
| Auto Scaling Group | 🚧 Planned |

---

# 📌 Version Information

| Component | Version |
|-----------|---------|
| Terraform | >= 1.8.x |
| AWS Provider | 6.x |
| Ubuntu | 24.04 LTS |
| Java | 17 |
| Node.js | LTS |

---

# 🤝 Contributing

1. Create a feature branch.
2. Make your changes.
3. Run:

```bash
terraform fmt
terraform validate
terraform plan
```

4. Commit your changes.
5. Open a pull request for review.

---

# 👨‍💻 Author

**Manohar**

**Project:** WON Bills

**Cloud Platform:** Amazon Web Services (AWS)

**Infrastructure as Code:** Terraform

---

# 📄 License

This repository is intended for internal infrastructure management and development.

---

<div align="center">

# ⭐ Terraform AWS Infrastructure Repository

### Amazon EC2 • Amazon VPC • Amazon S3 • AWS IAM • Security Groups

**Modular • Reusable • Secure • Production-Oriented**

Built with ❤️ using **Terraform** and **Amazon Web Services**

</div>
