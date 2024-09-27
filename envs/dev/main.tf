module "vpc" {
    source = "../../modules/vpc"

    cidr_block = "10.0.0.0/16"
}

module "ec2" {
    source = "../../modules/ec2"

    instance_type = "t2.micro"
    ami = "ami-0c55b159cbfafe1f0"
    vpc_id = module.vpc.vpc_id
}