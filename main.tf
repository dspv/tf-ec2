###########################
### Launch a web server ###
###########################

### Terraform Init
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

### Configure the AWS Provider
provider "aws" {
  region      = var.aws_region
  access_key  = var.access_key
  secret_key  = var.secret_key
}


##########################
### Default Variables  ###
##########################
variable "aws_region" {
  description = "AWS Region to spin up everything at"
  default     = "eu-central-1"
}

variable "availability_zone" {
  description = "Main AZ where to spin up our EC2 instance"
  default     = "eu-central-1a"
}

variable "subnet_prefix" {
  description = "CIDR block for subnet"
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 Instance type"
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "AMI for EC2 instance"
  default     = "ami-00a205cb8e06c3c4e"
}

variable "ssh_key_name" {
  description = "Your SSH key name"
  default     = "dspv1-kp"
}

