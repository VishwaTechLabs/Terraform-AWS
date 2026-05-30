# 🚀 Terraform AWS Labs

## VishwaTech Labs — By Vishwanath Gowda H

Professional Terraform AWS hands-on labs covering:
- AWS Authentication & Authorization
- S3 Bucket Provisioning
- VPC Creation
- Terraform Workflow
- Variables & Outputs
- Real-world DevOps Practices

## Repository Structure

```text
Terraform-AWS/
├── with_vars_tfvars/
├── without_vars_tfvars/
└── README.md
```

## Terraform Workflow

```text
fmt → validate → init → plan → apply → destroy
```

## Authentication Methods

- Hardcoded Credentials
- terraform.tfvars
- Environment Variables
- AWS CLI Profiles
- Assume Role
- IAM Role on EC2
- AWS SSO
- GitHub OIDC

## Architecture

```text
Terraform
   ↓
AWS Provider
   ↓
Authentication
   ↓
Authorization
   ↓
AWS Resources
 ├── S3 Bucket
 └── VPC
```

## Author

**Vishwanath Gowda H**  
Founder — VishwaTech Labs

⭐ Star the repository if you find it useful.
