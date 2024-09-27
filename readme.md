# Terraform AWS Infrastructure

## Overview
This project uses Terraform to provision and manage AWS resources. It includes modules for creating a VPC and EC2 instances, making it easy to set up a scalable infrastructure on AWS.

## Prerequisites
Before you begin, ensure you have the following installed:
- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Git](https://git-scm.com/)

## Getting Started

### Clone the Repository
```bash
git clone https://github.com/Masum-Osman/aws-terraform.git
cd aws-terraform
```

### Configure AWS Credentials
Ensure your AWS credentials are configured. You can do this using the AWS CLI:
```bash
aws configure
```
You will be prompted to enter your AWS Access Key, Secret Key, Region, and Output format.

### Directory Structure
```plaintext
aws-terraform/
│
├── envs/
│   ├── dev/
│   │   ├── main.tf         # Entry point for the development environment
│   │   ├── variables.tf    # Variables used in the dev environment
│   │   └── .terraform/      # Terraform provider and backend data
│   │
│   └── production/          # Production environment (if applicable)
│
├── modules/
│   ├── vpc/                 # VPC module
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── ec2/                 # EC2 module
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md                # Project documentation
```

### Usage

1. **Initialize Terraform**: 
   Run the following command to initialize the backend and install the required providers.
   ```bash
   terraform init
   ```

2. **Plan the Infrastructure**: 
   Create an execution plan to see the resources that will be created.
   ```bash
   terraform plan
   ```

3. **Apply the Configuration**: 
   Deploy the infrastructure to AWS.
   ```bash
   terraform apply
   ```

4. **Destroy the Infrastructure**: 
   If you want to tear down the resources, run:
   ```bash
   terraform destroy
   ```

### Variables
You can configure different variables such as instance type and AMI by modifying the `variables.tf` files located in each environment folder.

### Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
Thanks to Terraform and AWS for providing powerful tools to manage infrastructure as code!
