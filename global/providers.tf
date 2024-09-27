provider "aws" {
    region = var.region
}

variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}