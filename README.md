 AWS Terraform Setup

This repository contains Terraform configuration files to set up a secure and scalable web application infrastructure on AWS. The setup includes a VPC, public and private subnets ,nat gateway , internet gateway, EC2 instances, an RDS MySQL database, and an S3 bucket for static content.

## Prerequisites

- Terraform installed on your local machine
- AWS CLI configured with your credentials

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/aws-terraform-setup.git
    cd terraform
    ```

2. Initialize Terraform:
    ```bash
    terraform init
    ```

3. Review the execution plan:
    ```bash
    terraform plan
    ```

4. Apply the configuration:
    ```bash
    terraform apply
    ```

5. Confirm the apply step by typing `yes`.

## Outputs

After applying the configuration, Terraform will output the IDs of the created resources, including the VPC, subnets, EC2 instances, RDS instance endpoint, and S3 bucket name.

## Cleanup

To destroy the resources created by this setup, run:
```bash
terraform destroy



NOTE --- OVER HERE WE HAVE HARDCODED THE DATABASE CREDENTIALS IN THE VARIABLE FILE ONLY , IT IS NOT A RECOMMENDED WAY AS IT EXPOSES CREDENTIALS , WE CAN ALSO IMPLEMENT IT BY CREATING SECRETS IN GITHUB AND THEN ACCESS OR REFERENCE THOSE DATABASE CREDENTIALS 
