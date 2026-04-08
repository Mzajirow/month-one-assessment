# Terraform AWS Infrastructure

## Setup
1. Copy terraform.tfvars.example → terraform.tfvars
2. Update values

## Run
terraform init
terraform apply

## Architecture
- VPC with public/private subnets
- Bastion host
- Web servers (Apache)
- DB server (PostgreSQL)
- Application Load Balancer