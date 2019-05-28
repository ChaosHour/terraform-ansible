//
// EC2 - variables.tf
//
variable "region" {
  description = "the name of the AWS region your deploying into"
  type        = "string"
  default     = "us-XXXXX"
}

variable "env_prefix" {
  description = "Environment prefix for your Bastion host"
  type        = "string"
  default     = "pgbouncer-jumphost"
}

variable "instance_key_name" {
  description = "Name of the pem key used for ec2 access"
  type        = "string"
  default     = "xxxxxxxxx"
}

variable "private_key_path" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/xxxxxxx.pem"
}

variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "centos"
}

variable "subnet_id" {
  description = "The name of the existing Subnet you wish to deploy in"
  type        = "string"
  default     = "subnet-xxxxxxxxxxxxxx"
}

variable "vpc_id" {
  description = "The name of the existing VPC you wish to deploy in"
  type        = "string"
  default     = "vpc-xxxxxxxxxxxxxxxxx"
}

variable "vpc_sg" {
  description = "The name of the existing VPC_SG you wish to use"
  type        = "string"
  default     = "sg-xxxxxxxxxxxxxxxx"
} 

variable "instance-ami" {
  description = "The AMI (Amazon Machine Image) that identifies the instance"
  type        = "string"
  default     = "ami-xxxxxxxxxxxx"
}

variable "instance-type" {
  description = "The instance type to be used"
  type        = "string"
  default     = "t2.micro"
}

variable "instance-associate-public-ip" {
  description = "Defines if the EC2 instance has a public IP address."
  type        = "string"
  default     = "false"
}
