# Terraform AWS Projects

## Project Name

**WON Bills - AWS Infrastructure using Terraform**

This repository contains Terraform projects for deploying AWS infrastructure using Infrastructure as Code (IaC).

---

# Projects Included

## 1. EC2 Project

Deploys a production-ready Ubuntu EC2 server with networking and storage.

Resources Created:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Ubuntu EC2 Instance
- Elastic IP
- EC2 Key Pair
- Root EBS Volume (30 GB)
- Additional EBS Volume (30 GB)
- User Data Script
- Outputs

---

## 2. S3 Project

Deploys a secure S3 Bucket.

Resources Created

- S3 Bucket
- Bucket Versioning
- Server Side Encryption
- Bucket Ownership Controls
- Block Public Access
- Sample Object Upload
- Outputs

---

# Folder Structure

## EC2

```
EC2/
│
├── .env
├── .gitignore
├── README.md
│
├── versions.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
│
├── network.tf
├── keypair.tf
├── compute.tf
├── userdata.sh
├── outputs.tf
│
└── keys/
```

---

## S3

```
S3/
│
├── .env
├── .gitignore
├── README.md
│
├── versions.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
│
├── s3.tf
├── outputs.tf
│
└── documents/
```

---

# Terraform Files Explanation

## versions.tf

Purpose

Defines the Terraform version and required providers.

Example

- AWS Provider
- Random Provider
- TLS Provider
- Local Provider

---

## provider.tf

Purpose

Configures AWS Provider.

Example

- AWS Region
- Default Tags

---

## variables.tf

Purpose

Stores reusable input variables.

Examples

- AWS Region
- Project Name
- Environment
- Owner
- Instance Type
- Bucket Name

---

## terraform.tfvars

Purpose

Stores actual values of variables.

Example

```
aws_region = "ap-south-1"

project_name = "WON Bills"

environment = "dev"
```

---

## network.tf

Purpose

Creates AWS Networking.

Resources

- VPC
- Subnet
- Internet Gateway
- Route Table
- Security Group

---

## keypair.tf

Purpose

Creates EC2 SSH Key Pair.

Resources

- RSA Private Key
- AWS Key Pair

---

## compute.tf

Purpose

Creates EC2 Server.

Resources

- Ubuntu EC2
- Elastic IP
- EBS Volume

---

## userdata.sh

Purpose

Installs software automatically after EC2 launch.

Installs

- Java 17
- Node.js
- npm
- PM2
- Docker
- Docker Compose
- Git
- curl
- wget
- AWS CLI

---

## s3.tf

Purpose

Creates AWS S3 Bucket.

Resources

- Bucket
- Versioning
- Encryption
- Public Access Block
- Ownership Controls
- Sample File Upload

---

## outputs.tf

Purpose

Displays important information after deployment.

Examples

- EC2 Public IP
- Bucket Name
- Bucket ARN
- SSH Command

---

# Terraform Commands

## terraform init

Purpose

Downloads required providers and initializes Terraform.

Command

```bash
terraform init
```

Use

Run only once when starting a new project or after changing providers.

---

## terraform fmt

Purpose

Formats Terraform files.

Command

```bash
terraform fmt
```

Use

Keeps code clean and consistent.

---

## terraform validate

Purpose

Checks Terraform syntax.

Command

```bash
terraform validate
```

Use

Detects configuration errors before deployment.

---

## terraform plan

Purpose

Shows what Terraform will create, update or delete.

Command

```bash
terraform plan
```

Use

Review infrastructure changes before applying them.

---

## terraform apply

Purpose

Creates or updates AWS infrastructure.

Command

```bash
terraform apply
```

Terraform will ask for confirmation before creating resources.

---

## terraform apply -auto-approve

Purpose

Creates infrastructure without asking for confirmation.

Command

```bash
terraform apply -auto-approve
```

Use

Useful in CI/CD pipelines and automation.

---

## terraform show

Purpose

Displays the current Terraform state.

Command

```bash
terraform show
```

---

## terraform state list

Purpose

Lists all resources managed by Terraform.

Command

```bash
terraform state list
```

---

## terraform output

Purpose

Displays outputs defined in outputs.tf.

Command

```bash
terraform output
```

Example Output

```
public_ip

bucket_name

bucket_arn
```

---

## terraform destroy

Purpose

Deletes all AWS resources created by Terraform.

Command

```bash
terraform destroy
```

Terraform asks for confirmation.

---

## terraform destroy -auto-approve

Purpose

Deletes infrastructure without confirmation.

Command

```bash
terraform destroy -auto-approve
```

---

# Terraform Workflow

```
terraform fmt

↓

terraform init

↓

terraform validate

↓

terraform plan

↓

terraform apply

↓

terraform output

↓

terraform destroy
```

---

# Best Practices

- Keep Terraform state secure.
- Never commit `.env` files.
- Never commit `.pem` files.
- Use `.gitignore`.
- Review `terraform plan` before applying.
- Use meaningful tags.
- Store Terraform state remotely in production.
- Enable S3 versioning.
- Enable encryption for storage.
- Use IAM roles instead of access keys in production.

---

# Technologies Used

- Terraform
- AWS EC2
- AWS S3
- AWS VPC
- AWS IAM
- Ubuntu 24.04 LTS
- Amazon S3
- Git
- Docker
- Java 17
- Node.js
- PM2

---

# Author

**Manohar**

Project: **WON Bills**

Environment: **AWS Cloud**

Managed By: **Terraform**