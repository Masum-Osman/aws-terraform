terraform {
    backend "s3" {
        bucket = "l002-terraform-state-bucket"
        key = "dev/terraform.tfstate"
        region = "us-east-2"
    }
}
