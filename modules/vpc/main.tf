variable "cidr_block" {
    description = "The CIDR block for the VPC"
}

resource "aws_vpc" "this" {
    cidr_block = var.cidr_block
}

output "vpc_id" {
    value = aws_vpc.this.id
}