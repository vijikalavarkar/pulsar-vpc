# aws region
variable "aws_region" {}

#vpc
variable "pulsar_cidr_block" {}
variable "vpc_name" {}

#internet gateway
variable "internet_gateway_name" {}

#subnet
variable "subnet1_cidr_block" {}
variable "subnet1_az" {}
variable "subnet1_name" {}

variable "subnet2_cidr_block" {}
variable "subnet2_az" {}
variable "subnet2_name" {}

variable "subnet3_cidr_block" {}
variable "subnet3_az" {}
variable "subnet3_name" {}

#route table
variable "public_route_table_cidr_block" {}
variable "route_table_name" {}

#security group
variable "security_group_name" {}


#ec2
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "ec2_aws_region" {}
variable "instance_name" {}


#dynamodb
variable "terraform_locks_table_name" {}
variable "billing_mode" {}
variable "hash_key" {}