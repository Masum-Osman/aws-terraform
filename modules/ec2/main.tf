variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "ami" {
  description = "The AMI ID to use"
  type        = string
}

variable "subnet_id" {
  description = "The Subnet ID to launch the instance in"
  type        = string
}

variable "instance_count" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}

resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "TerraformInstance-${count.index}"
  }
}

output "instance_id" {
  value = aws_instance.this[*].id
}
