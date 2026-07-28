# aws-terraform-infra-samples

Sample Terraform modules demonstrating infrastructure-as-code practices for provisioning AWS environments.

## What this demonstrates

- 🌐 **Networking** — a VPC with public and private subnets, an internet gateway, and route tables.
- 🔐 **IAM** — a least-privilege IAM role and instance profile scoped to only the permissions the app needs.
- 💻 **Compute** — an EC2 instance with a security group allowing SSH (restricted to an admin CIDR) and HTTP.
- 🪣 **Storage** — a versioned S3 bucket for application data.

## Structure

```
.
├── main.tf        # Core resources: VPC, subnets, IAM, EC2, security group, S3
├── variables.tf    # Input variables with sensible defaults
└── outputs.tf      # Useful outputs (VPC ID, subnet IDs, instance IP, bucket name)
```

## Usage

```bash
terraform init
terraform plan -var="ami_id=ami-xxxxxxxx" -var="admin_cidr=203.0.113.0/32"
terraform apply -var="ami_id=ami-xxxxxxxx" -var="admin_cidr=203.0.113.0/32"
```

> This is a portfolio/demonstration repository showing Terraform and AWS architecture patterns. Review and adapt variable defaults (CIDR ranges, instance sizes, region) before using in any real environment.

## Author

Kiran Yalla — Senior Platform Engineer specializing in AWS cloud modernization, DevOps automation, and enterprise infrastructure.
