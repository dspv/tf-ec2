# How to use
- Clone this repo
- Run `terraform apply`
- Add *terraform.tfvars* file and set up your variables (default values are in *main.tf*)

## Requirements
| Name      | Version   |
|-----------|-----------|
| terraform | >= 0.12.0 |
| aws       | ~> 2.0    |

## Simple EC2
Spins a simple EC2 instance
Installs:
- Docker
- Docker-compose
- Git

Check out for variables in terraform.tfvars

## Note
EC2 spins up with my key 'dspv1'

## Source
https://github.com/dockersamples/example-voting-app

## How it works
Creates an infrastructure on AWS:
- VPC
- Internet Gateway
- Route Table
- Subnet
- Route table + Associates the Route Table with created Subnet
- Security group
- Elastic IP + Network Interface associated with it
- EC2 Instance
- Updates packages, Installs Git, Docker, Docker-compose
- Installs everything with Docker-compose from GitHub Repo

## I want to add
- Linting
- Check the infrastructure when it spinned up
- GitOps worker node