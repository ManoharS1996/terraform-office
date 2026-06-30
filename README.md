# 🚀 Terraform AWS Infrastructure Repository

<div align="center">

# 🌩️ WON Bills - AWS Infrastructure as Code (IaC)

### Enterprise AWS Infrastructure using Terraform

Build, Deploy, and Manage AWS Infrastructure using Terraform with reusable, modular, and production-ready configurations.

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

This repository contains modular Terraform projects used to provision AWS infrastructure for the **WON Bills** application.

Each AWS service is organized as an independent Terraform project to improve maintainability, readability, and deployment flexibility.

The repository follows Infrastructure as Code (IaC) principles and uses reusable variables, outputs, and standardized project structures.

---

# 🎯 Objectives

- Provision AWS infrastructure using Terraform
- Maintain reusable Terraform modules
- Follow production-oriented project structure
- Simplify AWS infrastructure deployment
- Automate resource provisioning
- Maintain infrastructure using version control

---

# ☁️ AWS Services Included

| Service | Description | Status |
|---------|-------------|:------:|
| 🖥️ Amazon EC2 | Virtual Machine Deployment | ✅ |
| 🌐 Amazon VPC | Networking Infrastructure | ✅ |
| 🪣 Amazon S3 | Object Storage | ✅ |
| 🔐 AWS IAM | Identity & Access Management | ✅ |
| 🛡️ Security Groups | Network Firewall | 🚧 |
| 💾 Amazon EBS | Block Storage | 🚧 |
| ⚖️ Application Load Balancer | Load Balancing | 🚧 |
| 📈 Auto Scaling Group | High Availability | 🚧 |

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

# 📦 Current Infrastructure

## 🖥️ EC2

Production Ubuntu Server

Features

- Ubuntu 24.04 LTS
- Elastic IP
- SSH Key Pair
- Root Volume
- Additional EBS Volume
- User Data Script
- Java 17
- Node.js
- npm
- PM2
- Docker
- Docker Compose
- Git
- AWS CLI

---

## 🌐 VPC

AWS Networking Infrastructure

Features

- Virtual Private Cloud
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables
- Route Associations
- DNS Support
- DNS Hostnames

---

## 🪣 S3

Amazon Object Storage

Features

- Private Bucket
- Versioning
- Server Side Encryption
- Ownership Controls
- Public Access Block
- Sample Object Upload

---

## 🔐 IAM

AWS Identity & Access Management

Features

- IAM User
- IAM Group
- IAM Role
- IAM Policy
- Policy Attachment
- EC2 Instance Profile
- Password Policy

---

# 🏗 AWS Infrastructure Architecture

```text
                           AWS CLOUD
                               │
             ┌─────────────────┼──────────────────┐
             │                 │                  │
           Amazon VPC      Amazon S3          AWS IAM
             │                                   │
      ┌──────┴─────────┐                ┌────────┴────────┐
      │                │                │                 │
 Public Subnet    Private Subnet     IAM User       IAM Role
      │                │                │                 │
      │                │           IAM Group        EC2 Profile
      │                │                │
Internet Gateway        │          IAM Policies
      │
Elastic IP
      │
Ubuntu EC2
      │
Docker
      │
Java 17
      │
Node.js
      │
PM2
```

---

# 📁 Project Folder Structure

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
│   └── outputs.tf
│
├── S3/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   └── outputs.tf
│
├── VPC/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   └── outputs.tf
│
├── IAM/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── iam.tf
│   └── outputs.tf
│
├── Security-Groups/
├── EBS/
├── ALB/
├── ASG/
│
└── README.md
```

---

# 🚀 Infrastructure Highlights

### Compute

- Ubuntu 24.04 EC2
- Elastic IP
- EBS Volumes

### Networking

- VPC
- Public & Private Subnets
- Internet Gateway
- Route Tables

### Storage

- Amazon S3
- Amazon EBS

### Identity

- IAM User
- IAM Group
- IAM Role
- IAM Policies

### DevOps Tools Installed

- Terraform
- Java 17
- Node.js
- npm
- Docker
- Docker Compose
- Git
- PM2
- AWS CLI

---

# 📌 Infrastructure Design Principles

- Infrastructure as Code (IaC)
- Reusable Terraform Configuration
- Modular Project Structure
- Resource Tagging
- Secure AWS Configuration
- Standardized Folder Structure
- Easy Maintenance
- Version Controlled Infrastructure

---
# 🚀 Terraform AWS Infrastructure Repository

<div align="center">

# 🌩️ WON Bills - AWS Infrastructure as Code (IaC)

### Enterprise AWS Infrastructure using Terraform

Build, Deploy, and Manage AWS Infrastructure using Terraform with reusable, modular, and production-ready configurations.

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

This repository contains modular Terraform projects used to provision AWS infrastructure for the **WON Bills** application.

Each AWS service is organized as an independent Terraform project to improve maintainability, readability, and deployment flexibility.

The repository follows Infrastructure as Code (IaC) principles and uses reusable variables, outputs, and standardized project structures.

---

# 🎯 Objectives

- Provision AWS infrastructure using Terraform
- Maintain reusable Terraform modules
- Follow production-oriented project structure
- Simplify AWS infrastructure deployment
- Automate resource provisioning
- Maintain infrastructure using version control

---

# ☁️ AWS Services Included

| Service | Description | Status |
|---------|-------------|:------:|
| 🖥️ Amazon EC2 | Virtual Machine Deployment | ✅ |
| 🌐 Amazon VPC | Networking Infrastructure | ✅ |
| 🪣 Amazon S3 | Object Storage | ✅ |
| 🔐 AWS IAM | Identity & Access Management | ✅ |
| 🛡️ Security Groups | Network Firewall | 🚧 |
| 💾 Amazon EBS | Block Storage | 🚧 |
| ⚖️ Application Load Balancer | Load Balancing | 🚧 |
| 📈 Auto Scaling Group | High Availability | 🚧 |

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

# 📦 Current Infrastructure

## 🖥️ EC2

Production Ubuntu Server

Features

- Ubuntu 24.04 LTS
- Elastic IP
- SSH Key Pair
- Root Volume
- Additional EBS Volume
- User Data Script
- Java 17
- Node.js
- npm
- PM2
- Docker
- Docker Compose
- Git
- AWS CLI

---

## 🌐 VPC

AWS Networking Infrastructure

Features

- Virtual Private Cloud
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables
- Route Associations
- DNS Support
- DNS Hostnames

---

## 🪣 S3

Amazon Object Storage

Features

- Private Bucket
- Versioning
- Server Side Encryption
- Ownership Controls
- Public Access Block
- Sample Object Upload

---

## 🔐 IAM

AWS Identity & Access Management

Features

- IAM User
- IAM Group
- IAM Role
- IAM Policy
- Policy Attachment
- EC2 Instance Profile
- Password Policy

---

# 🏗 AWS Infrastructure Architecture

```text
                           AWS CLOUD
                               │
             ┌─────────────────┼──────────────────┐
             │                 │                  │
           Amazon VPC      Amazon S3          AWS IAM
             │                                   │
      ┌──────┴─────────┐                ┌────────┴────────┐
      │                │                │                 │
 Public Subnet    Private Subnet     IAM User       IAM Role
      │                │                │                 │
      │                │           IAM Group        EC2 Profile
      │                │                │
Internet Gateway        │          IAM Policies
      │
Elastic IP
      │
Ubuntu EC2
      │
Docker
      │
Java 17
      │
Node.js
      │
PM2
```

---

# 📁 Project Folder Structure

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
│   └── outputs.tf
│
├── S3/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   └── outputs.tf
│
├── VPC/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── network.tf
│   └── outputs.tf
│
├── IAM/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── iam.tf
│   └── outputs.tf
│
├── Security-Groups/
├── EBS/
├── ALB/
├── ASG/
│
└── README.md
```

---

# 🚀 Infrastructure Highlights

### Compute

- Ubuntu 24.04 EC2
- Elastic IP
- EBS Volumes

### Networking

- VPC
- Public & Private Subnets
- Internet Gateway
- Route Tables

### Storage

- Amazon S3
- Amazon EBS

### Identity

- IAM User
- IAM Group
- IAM Role
- IAM Policies

### DevOps Tools Installed

- Terraform
- Java 17
- Node.js
- npm
- Docker
- Docker Compose
- Git
- PM2
- AWS CLI

---

# 📌 Infrastructure Design Principles

- Infrastructure as Code (IaC)
- Reusable Terraform Configuration
- Modular Project Structure
- Resource Tagging
- Secure AWS Configuration
- Standardized Folder Structure
- Easy Maintenance
- Version Controlled Infrastructure

---
# ⚙️ Terraform Commands Reference

Terraform follows a simple workflow for provisioning and managing infrastructure.

```text
Write Code
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

# 📌 terraform fmt

## Purpose

Formats Terraform configuration files according to Terraform formatting standards.

### Syntax

```bash
terraform fmt
```

### Format Entire Project

```bash
terraform fmt -recursive
```

### Example

Before

```hcl
resource "aws_vpc" "main"{
cidr_block="10.0.0.0/16"
}
```

After

```hcl
resource "aws_vpc" "main" {

  cidr_block = "10.0.0.0/16"

}
```

### When to Use

- Before committing code
- Before validation
- Before deployment

---

# 📌 terraform init

## Purpose

Initializes the Terraform working directory.

Downloads all required providers and creates the local Terraform environment.

### Syntax

```bash
terraform init
```

### What It Creates

```text
.terraform/

.terraform.lock.hcl
```

### When to Use

- First time running a project
- After changing providers
- After cloning a repository

---

# 📌 terraform init -upgrade

## Purpose

Upgrades providers to the latest version allowed by the version constraints.

### Syntax

```bash
terraform init -upgrade
```

### When to Use

- Updating provider versions
- Testing new provider releases
- Refreshing provider plugins

---

# 📌 terraform validate

## Purpose

Checks Terraform configuration for syntax and configuration errors.

### Syntax

```bash
terraform validate
```

### Success Output

```text
Success! The configuration is valid.
```

### When to Use

- Before terraform plan
- During CI/CD validation

---

# 📌 terraform plan

## Purpose

Creates an execution plan showing the changes Terraform will make.

### Syntax

```bash
terraform plan
```

### Save Plan to File

```bash
terraform plan -out=tfplan
```

### Example Output

```text
Plan: 12 to add, 0 to change, 0 to destroy.
```

### When to Use

Always review the plan before applying changes.

---

# 📌 terraform apply

## Purpose

Creates or updates AWS resources.

### Syntax

```bash
terraform apply
```

Terraform will ask for confirmation:

```text
Do you want to perform these actions?

Enter a value:

yes
```

---

# 📌 terraform apply -auto-approve

## Purpose

Creates infrastructure without asking for confirmation.

### Syntax

```bash
terraform apply -auto-approve
```

### Recommended For

- CI/CD Pipelines
- Jenkins
- GitHub Actions
- Azure DevOps

---

# 📌 terraform show

## Purpose

Displays the current Terraform state in a readable format.

### Syntax

```bash
terraform show
```

### Show Saved Plan

```bash
terraform show tfplan
```

### Displays

- Resources
- Attributes
- Outputs
- Dependencies

---

# 📌 terraform output

## Purpose

Displays output values defined in `outputs.tf`.

### Syntax

```bash
terraform output
```

### Display Specific Output

```bash
terraform output public_ip
```

### Example

```text
public_ip = "13.234.xx.xx"

bucket_name = "won-bills-storage"

vpc_id = "vpc-xxxxxxxx"

iam_role = "won-bills-role"
```

---

# 📌 terraform state list

## Purpose

Lists all resources managed by Terraform.

### Syntax

```bash
terraform state list
```

### Example

```text
aws_instance.server

aws_vpc.main

aws_s3_bucket.storage

aws_iam_role.ec2_role
```

---

# 📌 terraform state show

## Purpose

Displays detailed information about a specific resource.

### Syntax

```bash
terraform state show RESOURCE_NAME
```

### Example

```bash
terraform state show aws_instance.server
```

---

# 📌 terraform refresh

## Purpose

Refreshes the Terraform state by reading the current infrastructure.

> **Note:** In newer Terraform versions, refresh behavior is integrated into the planning process, so this command is used less frequently.

### Syntax

```bash
terraform refresh
```

---

# 📌 terraform destroy

## Purpose

Deletes all resources managed by Terraform.

### Syntax

```bash
terraform destroy
```

Terraform will ask for confirmation.

```text
Do you really want to destroy?

Enter a value:

yes
```

---

# 📌 terraform destroy -auto-approve

## Purpose

Deletes infrastructure without confirmation.

### Syntax

```bash
terraform destroy -auto-approve
```

### Recommended For

- Development
- Testing
- CI/CD cleanup

---

# 📌 terraform providers

## Purpose

Displays all providers used by the project.

### Syntax

```bash
terraform providers
```

---

# 📌 terraform version

## Purpose

Displays the installed Terraform version.

### Syntax

```bash
terraform version
```

---

# 📌 terraform workspace list

## Purpose

Lists available Terraform workspaces.

### Syntax

```bash
terraform workspace list
```

---

# 📌 terraform workspace new

## Purpose

Creates a new Terraform workspace.

### Syntax

```bash
terraform workspace new dev
```

---

# 📌 terraform workspace select

## Purpose

Switches between Terraform workspaces.

### Syntax

```bash
terraform workspace select dev
```

---

# 📌 Complete Deployment Workflow

```text
Step 1
terraform fmt

        │
        ▼

Step 2
terraform init

        │
        ▼

Step 3
terraform validate

        │
        ▼

Step 4
terraform plan

        │
        ▼

Step 5
terraform apply

        │
        ▼

Step 6
terraform output

        │
        ▼

Step 7
terraform show

        │
        ▼

Step 8
terraform destroy
```

---

# 📋 Command Summary

| Command | Purpose |
|----------|---------|
| `terraform fmt` | Format Terraform files |
| `terraform fmt -recursive` | Format all project files |
| `terraform init` | Initialize Terraform |
| `terraform init -upgrade` | Upgrade providers |
| `terraform validate` | Validate configuration |
| `terraform plan` | Preview infrastructure changes |
| `terraform plan -out=tfplan` | Save execution plan |
| `terraform apply` | Apply changes |
| `terraform apply -auto-approve` | Apply without confirmation |
| `terraform show` | Display state details |
| `terraform output` | Show output values |
| `terraform state list` | List managed resources |
| `terraform state show` | Show resource details |
| `terraform providers` | Display providers |
| `terraform version` | Display Terraform version |
| `terraform workspace list` | List workspaces |
| `terraform workspace new` | Create workspace |
| `terraform workspace select` | Switch workspace |
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

For cleanup:

```bash
terraform destroy -auto-approve
```

---
# 🚀 Deployment Guide

Follow the steps below to deploy the infrastructure.

---

## Step 1 : Clone Repository

```bash
git clone https://github.com/<your-username>/terraform-office.git

cd terraform-office
```

---

## Step 2 : Navigate to Project

Example

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

---

## Step 3 : Configure AWS Credentials

### Windows PowerShell

```powershell
$env:AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"

$env:AWS_SECRET_ACCESS_KEY="YOUR_SECRET_KEY"

$env:AWS_REGION="ap-south-1"
```

### Linux / macOS

```bash
export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY

export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY

export AWS_REGION=ap-south-1
```

---

## Step 4 : Initialize Terraform

```bash
terraform init
```

---

## Step 5 : Format Code

```bash
terraform fmt
```

---

## Step 6 : Validate Configuration

```bash
terraform validate
```

---

## Step 7 : Review Execution Plan

```bash
terraform plan
```

---

## Step 8 : Deploy Infrastructure

```bash
terraform apply
```

or

```bash
terraform apply -auto-approve
```

---

## Step 9 : View Outputs

```bash
terraform output
```

---

## Step 10 : Destroy Infrastructure

```bash
terraform destroy
```

or

```bash
terraform destroy -auto-approve
```

---

# 📊 Deployment Workflow

```text
Clone Repository
        │
        ▼
Configure AWS Credentials
        │
        ▼
terraform init
        │
        ▼
terraform fmt
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
Infrastructure Created
        │
        ▼
terraform output
        │
        ▼
terraform destroy
```

---

# 🔐 Security Best Practices

## IAM

- Follow Least Privilege Principle
- Use IAM Roles instead of Access Keys where possible
- Rotate credentials regularly
- Avoid Administrator permissions unless required

---

## Terraform

- Never commit `.env`
- Never commit `.tfvars` containing secrets
- Never commit `.pem` files
- Never commit `terraform.tfstate`
- Use `.gitignore`

---

## AWS

- Enable Encryption
- Enable Versioning
- Tag Resources
- Enable CloudTrail
- Enable CloudWatch Monitoring

---

# 📁 Files Ignored

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

# 🛠 Common Terraform Errors

## Provider Not Installed

Error

```text
Provider registry not found
```

Solution

```bash
terraform init
```

---

## Invalid Configuration

Error

```text
Configuration is invalid
```

Solution

```bash
terraform validate
```

---

## Formatting Issues

Solution

```bash
terraform fmt
```

---

## Resource Already Exists

Possible Causes

- Duplicate resource names
- Globally unique resource names (for example, S3 bucket names)

Solution

- Use a unique resource name
- Import an existing resource if Terraform should manage it

---

## Authentication Error

Error

```text
InvalidClientTokenId
```

Solution

- Verify AWS credentials
- Confirm the correct AWS region is configured

---

## Access Denied

Error

```text
AccessDenied
```

Solution

Ensure the IAM identity has permissions to create or manage the required AWS resources.

---

# 📂 AWS Services Summary

| AWS Service | Purpose |
|-------------|---------|
| Amazon EC2 | Virtual Servers |
| Amazon VPC | Networking |
| Amazon S3 | Object Storage |
| AWS IAM | Identity & Access Management |
| Internet Gateway | Internet Connectivity |
| Route Table | Traffic Routing |
| Security Group | Instance Firewall |
| Elastic IP | Static Public IP |
| Amazon EBS | Block Storage |

---

# 💻 Software Installed on EC2

The EC2 bootstrap script installs:

- Ubuntu Updates
- Java 17
- Node.js LTS
- npm
- Docker Engine
- Docker Compose Plugin
- Git
- AWS CLI
- curl
- wget
- unzip
- zip
- vim
- tree
- htop
- net-tools
- PM2

---

# 📋 Repository Standards

- Modular Terraform Structure
- Reusable Variables
- Reusable Outputs
- Consistent Resource Naming
- Default Resource Tags
- Infrastructure as Code (IaC)
- Production-Oriented Configuration

---

# 📦 Technologies Used

## Infrastructure

- Amazon Web Services (AWS)

## Infrastructure as Code

- Terraform

## Compute

- Amazon EC2

## Storage

- Amazon S3
- Amazon EBS

## Networking

- Amazon VPC
- Internet Gateway
- Route Tables

## Identity

- AWS IAM

## Operating System

- Ubuntu Server 24.04 LTS

## Development Tools

- Git
- Docker
- Docker Compose
- PM2
- Java 17
- Node.js
- npm
- AWS CLI

---

# 📈 Project Status

| Module | Status |
|---------|:------:|
| EC2 | ✅ Completed |
| S3 | ✅ Completed |
| VPC | ✅ Completed |
| IAM | ✅ Completed |
| Security Groups | 🚧 Planned |
| EBS | 🚧 Planned |
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

# 👨‍💻 Author

**Manohar**

**Project Name:** WON Bills

**Cloud Platform:** Amazon Web Services (AWS)

**Infrastructure as Code:** Terraform

**Operating System:** Ubuntu 24.04 LTS

---

# 📄 License

This repository is intended for internal infrastructure management and development.

---

<div align="center">

## ⭐ Terraform AWS Infrastructure Repository

### Modular • Reusable • Secure • Production-Oriented

**Built with Terraform and AWS**

</div>