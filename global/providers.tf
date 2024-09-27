# provider "aws" {
#     region = var.region
# }

# variable "region" {
#   description = "The AWS region to deploy resources in"
#   default     = "us-east-2"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Use a specific version as needed
    }
  }
}

provider "aws" {
  region = var.region
}
