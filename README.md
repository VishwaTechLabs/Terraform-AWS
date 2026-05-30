<div align="center">

# 🚀 Terraform AWS Labs

### Infrastructure as Code using Terraform and AWS

[![Terraform](https://img.shields.io/badge/Terraform-v1.x-7B42BC?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)](https://aws.amazon.com/)
[![DevOps](https://img.shields.io/badge/DevOps-Automation-blue?style=for-the-badge)](#)
[![IaC](https://img.shields.io/badge/Infrastructure%20as%20Code-IaC-success?style=for-the-badge)](#)
[![GitHub Stars](https://img.shields.io/github/stars/iampamidlmvishwa/Terraform-AWS?style=for-the-badge)](#)

## 🎓 VishwaTech Labs

### By Vishwanath Gowda H

Learn Terraform, AWS, DevOps, Kubernetes, Docker, CI/CD and Cloud Computing through Hands-On Labs.

</div>

---

# 📖 Project Overview

This repository contains Terraform AWS Hands-On Labs designed for:

- Beginners Learning Terraform
- DevOps Engineers
- Cloud Engineers
- AWS Enthusiasts
- Infrastructure Engineers

---

# 🏗 AWS Architecture

```text
Terraform
    │
    ▼
AWS Provider
    │
    ▼
Authentication
    │
    ▼
Authorization
    │
    ▼
AWS Resources
 ┌──┴──┐
 ▼     ▼
S3    VPC
```

---

# 🎯 Learning Path

- Terraform Fundamentals
- AWS Authentication
- AWS Authorization
- Terraform Workflow
- Terraform Lifecycle
- Terraform Variables
- Terraform Outputs
- Amazon S3
- Amazon VPC
- Amazon EC2
- Terraform State
- Terraform Modules
- GitHub Actions

---

# 📂 Repository Structure

```text
Terraform-AWS/

├── with_vars_tfvars/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── s3.tf
│   ├── vpc.tf
│   └── output.tf
│
├── without_vars_tfvars/
│   ├── provider.tf
│   ├── s3.tf
│   ├── vpc.tf
│   └── output.tf
│
└── README.md
```

---

# 🔐 Terraform Authentication Methods

1. Hardcoded Credentials
2. terraform.tfvars
3. Environment Variables
4. AWS CLI Profiles
5. Assume Role
6. IAM Role on EC2
7. AWS SSO
8. GitHub OIDC

---

# ⚙ Terraform Workflow

```text
terraform fmt
      ↓
terraform validate
      ↓
terraform init
      ↓
terraform plan
      ↓
terraform apply
      ↓
terraform destroy
```

---

# 🚀 Getting Started

```bash
git clone https://github.com/iampamidlmvishwa/Terraform-AWS.git
cd Terraform-AWS
terraform init
terraform plan
terraform apply
```

---

# 📦 AWS Resources Created

## S3 Bucket

```hcl
resource "aws_s3_bucket" "demo" {}
```

## VPC

```hcl
resource "aws_vpc" "main" {}
```

CIDR:

```text
10.0.0.0/16
```

---

# 📺 VishwaTech Labs Terraform Series

- Lab 01 – Terraform AWS Authentication & Authorization
- Lab 02 – Terraform Workflow vs Lifecycle
- Lab 03 – Terraform Blocks Explained
- Lab 04 – Variables and tfvars
- Lab 05 – Terraform State File
- Lab 06 – Terraform VPC
- Lab 07 – Terraform EC2
- Lab 08 – Terraform Modules
- Lab 09 – Remote Backend
- Lab 10 – GitHub Actions with Terraform

---

# 🌐 Connect With Me

GitHub:
https://github.com/VishwaTechLabs

YouTube:
https://youtube.com/@VishwaTechLabs

LinkedIn:
https://linkedin.com

---

# 👨‍💻 Author

## Vishwanath Gowda H

Founder - VishwaTech Labs

DevOps Engineer | Cloud Engineer | Terraform Enthusiast

---

<div align="center">

## ⭐ Star this Repository if it helped you

## 🚀 Happy Learning

### VishwaTech Labs

### By Vishwanath Gowda H

</div>
