# 🔐 Terraform AWS Authentication Methods

## VishwaTech Labs

### By Vishwanath Gowda H

---

# 📖 Introduction

Before Terraform can create AWS resources, it must authenticate itself with AWS.

Authentication answers:

```text
Who are you?
```

After authentication, AWS performs authorization.

Authorization answers:

```text
What are you allowed to do?
```

Terraform supports multiple authentication mechanisms.

Some are suitable for learning environments while others are designed for enterprise production workloads.

---

# ☁ Authentication Flow

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
AWS API
     │
     ▼
AWS Resources
```

---

# Method 1 - Hardcoded Credentials

## Configuration

```hcl
provider "aws" {

  region = "ap-south-1"

  access_key = "XXXX"

  secret_key = "XXXX"

}
```

---

## How It Works

```text
Terraform
      │
      ▼
Access Key
Secret Key
      │
      ▼
AWS
```

Terraform directly sends the access key and secret key to AWS.

AWS validates the credentials and allows Terraform to create resources.

---

## Advantages

✅ Easy to Understand

✅ Fast Setup

✅ Perfect for Learning

---

## Disadvantages

❌ Credentials Visible in Code

❌ Security Risk

❌ Not Recommended for Production

---

## Use Case

```text
Training

Labs

Demo Videos
```

---

# Method 2 - terraform.tfvars

## Configuration

terraform.tfvars

```hcl
access_key = "XXXX"

secret_key = "XXXX"
```

provider.tf

```hcl
provider "aws" {

  access_key = var.access_key

  secret_key = var.secret_key

}
```

---

## How It Works

```text
Terraform
      │
      ▼
terraform.tfvars
      │
      ▼
AWS
```

---

## Advantages

✅ Cleaner Code

✅ Easy Variable Management

---

## Disadvantages

❌ Credentials Stored in Files

❌ Can Be Accidentally Committed to Git

---

## Use Case

```text
Learning Labs

Small Projects
```

---

# Method 3 - Environment Variables

## Configuration

Linux

```bash
export AWS_ACCESS_KEY_ID=XXXX

export AWS_SECRET_ACCESS_KEY=XXXX
```

Windows

```powershell
setx AWS_ACCESS_KEY_ID XXXX

setx AWS_SECRET_ACCESS_KEY XXXX
```

Terraform

```hcl
provider "aws" {}
```

---

## How It Works

```text
Terraform
      │
      ▼
Environment Variables
      │
      ▼
AWS
```

---

## Advantages

✅ More Secure

✅ No Credentials in Code

✅ Common Developer Practice

---

## Disadvantages

❌ Variables Must Be Configured

❌ User Dependency

---

## Use Case

```text
Developer Laptop

Local Workstation
```

---

# Method 4 - AWS CLI Profile

## Configuration

```bash
aws configure
```

Creates:

```text
~/.aws/credentials
```

Terraform

```hcl
provider "aws" {

  profile = "default"

}
```

---

## How It Works

```text
Terraform
      │
      ▼
AWS CLI Profile
      │
      ▼
AWS
```

---

## Advantages

✅ Multiple AWS Accounts

✅ Easy Account Switching

✅ Common Practice

---

## Disadvantages

❌ Local Machine Dependency

---

## Use Case

```text
Developers

AWS Administrators
```

---

# Method 5 - Assume Role

## Configuration

```hcl
provider "aws" {

  assume_role {

    role_arn = "arn:aws:iam::123456789012:role/TerraformRole"

  }

}
```

---

## How It Works

```text
Dev Account
      │
      ▼
 Assume Role
      │
      ▼
Production Account
```

---

## Advantages

✅ Cross Account Access

✅ Enterprise Standard

✅ Temporary Credentials

---

## Disadvantages

❌ Slightly More Complex

---

## Use Case

```text
Multi Account AWS Environments

Enterprise Infrastructure
```

---

# Method 6 - IAM Role on EC2

## Configuration

Attach IAM Role to EC2 Instance

Terraform

```hcl
provider "aws" {}
```

No Access Keys Required.

---

## How It Works

```text
EC2
 │
 ▼
IAM Role
 │
 ▼
Terraform
 │
 ▼
AWS
```

---

## Advantages

✅ No Credentials Stored

✅ Highly Secure

✅ AWS Recommended

---

## Disadvantages

❌ Works Only Within AWS

---

## Use Case

```text
Production AWS Workloads
```

---

# Method 7 - AWS SSO

## Configuration

```bash
aws sso login
```

Terraform

```hcl
provider "aws" {

  profile = "sso-profile"

}
```

---

## How It Works

```text
User
  │
  ▼
AWS SSO
  │
  ▼
Temporary Credentials
  │
  ▼
Terraform
```

---

## Advantages

✅ Centralized Authentication

✅ Enterprise Ready

✅ Better Governance

---

## Disadvantages

❌ Initial Setup Required

---

## Use Case

```text
Large Enterprises

Corporate AWS Environments
```

---

# Method 8 - GitHub OIDC

## How It Works

```text
GitHub Actions
       │
       ▼
OIDC Token
       │
       ▼
IAM Role
       │
       ▼
AWS
```

---

## Advantages

✅ No Secrets Required

✅ Modern CI/CD Authentication

✅ Highly Secure

✅ Temporary Credentials

---

## Disadvantages

❌ Initial IAM Configuration Required

---

## Use Case

```text
GitHub Actions

Production CI/CD Pipelines
```

---

# 📊 Authentication Method Comparison

| Method                | Security  | Ease   | Production |
| --------------------- | --------- | ------ | ---------- |
| Hardcoded Credentials | Low       | High   | No         |
| terraform.tfvars      | Low       | High   | No         |
| Environment Variables | Medium    | High   | Yes        |
| AWS CLI Profile       | Medium    | High   | Yes        |
| Assume Role           | High      | Medium | Yes        |
| IAM Role on EC2       | High      | High   | Yes        |
| AWS SSO               | High      | Medium | Yes        |
| GitHub OIDC           | Very High | Medium | Yes        |

---

# 🏆 Which Method Should You Use?

## Learning

```text
Hardcoded Credentials

terraform.tfvars
```

---

## Developer Laptop

```text
Environment Variables

AWS CLI Profile
```

---

## AWS Production

```text
IAM Role

Assume Role
```

---

## Enterprise

```text
AWS SSO
```

---

## CI/CD

```text
GitHub OIDC
```

---

# ⚙ Terraform Workflow

```text
terraform fmt
       │
       ▼
terraform validate
       │
       ▼
terraform init
       │
       ▼
terraform plan
       │
       ▼
terraform apply
       │
       ▼
terraform destroy
```

---

# 👨‍💻 Author

## Vishwanath Gowda H

### VishwaTech Labs

Terraform • AWS • Azure • GCP • DevOps

---

# 🚀 Happy Learning

Star ⭐ the repository if it helped you.
