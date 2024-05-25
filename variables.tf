variable "aws_region" {
  description = "Add AWS region."
  default     = "ap-south-1"
  type        = string
}


variable "aws_vpc_name" {
  type        = string
  description = "Add name for your VPC."
  default     = "aws_vpc"
}

variable "aws_vpc_cidr" {
  type        = string
  description = "Add CIDR block for your VPC."
  default     = "192.168.0.0/16"
}

variable "aws_vpc_azs" {
  type        = list(string)
  description = "Add list of AZs available in the region that you want to use. Example ['ap-south-1a', 'ap-south-1b', 'ap-south-1c']"
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "aws_vpc_private_subnets" {
  type        = list(string)
  description = "Add list of CIDR locks for private subnets in the vpc. Example ['192.168.1.0/24','192.168.2.0/24','192.168.3.0/24']"
  default     = ["192.168.1.0/24", "192.168.2.0/24"] 
}

variable "aws_vpc_public_subnets" {
  type        = list(string)
  description = "Add list of CIDR locks for public subnets in the vpc. Example ['192.168.11.0/24','192.168.12.0/24','192.168.13.0/24']"
  default     = ["192.168.11.0/24"]
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Enable or disable the NAT gateway. Enter a boolean value 'true' or 'false'."
  default     = true
}

variable "environment" {
  type        = string
  description = "Add the environment name"
  default     = "demo"
}

variable "aws_sg_name" {
  type        = string
  description = "security group name"
  default     = "webserver_sg"
}

variable "tag" {
  type    = string
  default = "demo"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-08ebc9e780cde07dd"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t3.micro"
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "The master username for the RDS instance"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the RDS instance"
  type        = string
  default     = "password"
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "s3_bucket_name" {
  type        = string
  description = "The name for the bucket"
  default     = "static-bucket-1754"
}
