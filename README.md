# 🚀 Terraform AWS Infrastructure Projects

<div align="center">

## 🌩️ WON Bills - AWS Infrastructure as Code (IaC)

Build and Manage AWS Infrastructure using **Terraform**

![Terraform](https://img.shields.io/badge/Terraform-v1.8+-623CE4?style=for-the-badge&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge&logo=ubuntu)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</div>

---

# 📖 Overview

This repository contains **production-ready Terraform projects** to provision AWS infrastructure using **Infrastructure as Code (IaC)**.

Each project is developed independently following **Terraform Best Practices**, making it easier to learn, maintain, and deploy cloud resources.

---

# 📂 Projects Included

| Project | Description | Status |
|----------|-------------|--------|
| 🖥️ EC2 | Ubuntu Server with Networking & Storage | ✅ Completed |
| 🪣 S3 | Secure S3 Bucket with Versioning & Encryption | ✅ Completed |
| 🌐 VPC | Production Ready Networking Infrastructure | 🚧 In Progress |

---

# 📁 Repository Structure

```text
terraform-office/
│
├── EC2/
│
├── S3/
│
├── VPC/
│
└── README.md
```

---

# 🖥️ EC2 Project

Creates a complete Ubuntu server infrastructure.

## Resources

- ✅ VPC
- ✅ Public Subnet
- ✅ Internet Gateway
- ✅ Route Table
- ✅ Route Table Association
- ✅ Security Group
- ✅ Ubuntu 24.04 EC2
- ✅ Elastic IP
- ✅ EC2 Key Pair
- ✅ Root EBS (30 GB)
- ✅ Additional EBS (30 GB)
- ✅ User Data Script
- ✅ Outputs

---

## EC2 Folder

```text
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

# 🪣 S3 Project

Creates a secure Amazon S3 Bucket.

## Resources

- ✅ S3 Bucket
- ✅ Versioning
- ✅ Server Side Encryption
- ✅ Bucket Ownership Controls
- ✅ Public Access Block
- ✅ Sample File Upload
- ✅ Outputs

---

## S3 Folder

```text
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

# 🌐 VPC Project

Creates a production-ready AWS Networking environment.

## Current Resources

- ✅ VPC
- ✅ Internet Gateway
- ✅ Public Subnet 1
- ✅ Public Subnet 2
- ✅ Private Subnet 1
- ✅ Private Subnet 2

## Upcoming Resources

- 🚧 Public Route Table
- 🚧 Private Route Table
- 🚧 Route Table Associations
- 🚧 NAT Gateway
- 🚧 Elastic IP
- 🚧 Network ACL
- 🚧 Security Groups

---

## VPC Folder

```text
VPC/
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
├── outputs.tf
```

---

# 📄 Terraform File Explanation

| File | Description |
|------|-------------|
| versions.tf | Terraform Version & Providers |
| provider.tf | AWS Provider Configuration |
| variables.tf | Input Variables |
| terraform.tfvars | Variable Values |
| network.tf | VPC, Subnets, Route Tables, IGW |
| keypair.tf | EC2 SSH Key Pair |
| compute.tf | EC2 Instance & EBS |
| userdata.sh | Server Bootstrap Script |
| s3.tf | Amazon S3 Bucket |
| outputs.tf | Displays Resource Outputs |

---

# ⚙️ Terraform Commands

## 📌 Format Code

```bash
terraform fmt
```

Formats all Terraform files.

---

## 📌 Initialize Terraform

```bash
terraform init
```

Downloads provider plugins and initializes the project.

Creates:

- `.terraform/`
- `.terraform.lock.hcl`

---

## 📌 Validate Configuration

```bash
terraform validate
```

Checks Terraform configuration for syntax and configuration errors.

---

## 📌 Preview Infrastructure

```bash
terraform plan
```

Shows the execution plan without creating resources.

---

## 📌 Create Infrastructure

```bash
terraform apply
```

Terraform asks for confirmation before creating resources.

---

## 📌 Create Without Confirmation

```bash
terraform apply -auto-approve
```

Creates resources automatically without prompting.

Useful for:

- Jenkins
- GitHub Actions
- Azure DevOps
- CI/CD Pipelines

---

## 📌 Show Current State

```bash
terraform show
```

Displays the current Terraform state.

---

## 📌 List Managed Resources

```bash
terraform state list
```

Lists all resources managed by Terraform.

---

## 📌 Display Outputs

```bash
terraform output
```

Displays outputs from `outputs.tf`.

Example:

```text
public_ip

bucket_name

vpc_id
```

---

## 📌 Destroy Infrastructure

```bash
terraform destroy
```

Deletes all created AWS resources.

---

## 📌 Destroy Without Confirmation

```bash
terraform destroy -auto-approve
```

Deletes all resources automatically.

---

# 🔄 Terraform Workflow

```text
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
terraform destroy
```

---

# 🏗️ AWS Architecture

```text
                    AWS Cloud
                        │
        ┌───────────────┼────────────────┐
        │               │                │
      Amazon VPC      Amazon S3      EC2 Instance
        │                                │
 ┌──────┴────────┐                 Ubuntu 24.04
 │               │                      │
Public Subnet  Private Subnet      Java 17
 │                                    │
Internet Gateway                  Node.js
 │                                    │
Elastic IP                        Docker
                                  PM2
```

---

# 💻 Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS S3
- AWS IAM
- Internet Gateway
- Route Tables
- Ubuntu 24.04 LTS
- Java 17
- Node.js
- Docker
- PM2
- Git

---

# 📚 Best Practices

- ✅ Infrastructure as Code (IaC)
- ✅ Modular Terraform Design
- ✅ Reusable Variables
- ✅ Remote State (Recommended)
- ✅ Least Privilege IAM
- ✅ Secure S3 Storage
- ✅ Encryption Enabled
- ✅ Version Control
- ✅ Resource Tagging
- ✅ Production Folder Structure

---


# 👨‍💻 Author

**Manohar**

**Project:** WON Bills

**Cloud Platform:** Amazon Web Services (AWS)

**Infrastructure Managed By:** Terraform

---

## ⭐ If you found this project useful, consider giving it a star on GitHub!