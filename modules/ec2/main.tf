variable "instance_type" {
    description = "The type of instance to use"
}

variable "ami" {
    description = "The AMI ID to use"
}

variable "vpc_id" {
    description = "The VPC ID to launch the instance in"
}

resource "aws_instance" "this" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.vpc_id

    tags = {
        Name = "TerraformInstance"
    }
}

output "instance_id" {
    value = aws_instance.this.id
}