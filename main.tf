terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "vijethkalavarkar.bucket"
    key    = "pulsar.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region
}

#Modules

#vpc
module "pulsar_vpc" {
  source = "./modules/vpc"
  pulsar_cidr_block = var.pulsar_cidr_block
  vpc_name = var.vpc_name
}

#subnetnets
module "pulsar_subnets" {
  source = "./modules/subnets"
  pulsar_vpc_id = module.pulsar_vpc.pulsar_vpc_id

  subnet1_cidr_block = var.subnet1_cidr_block
  subnet1_az = var.subnet1_az
  subnet1_name = var.subnet1_name

  subnet2_cidr_block = var.subnet2_cidr_block
  subnet2_az = var.subnet2_az
  subnet2_name = var.subnet2_name
  
  subnet3_cidr_block = var.subnet3_cidr_block
  subnet3_az = var.subnet3_az
  subnet3_name = var.subnet3_name
}

#internet gateway
module "pulsar_internet_gateway" {
  source = "./modules/internet_gateway"
  pulsar_vpc_id = module.pulsar_vpc.pulsar_vpc_id
  internet_gateway_name = var.internet_gateway_name


}

#route table
module "pulsar_route_table" {
  source = "./modules/route_table"
  pulsar_vpc_id = module.pulsar_vpc.pulsar_vpc_id
  public_route_table_cidr_block = var.public_route_table_cidr_block
  route_table_name = var.route_table_name
  internet_gateway_id = module.pulsar_internet_gateway.internet_gateway_id
}

#route table association
module "pulsar_route_table_association" {
  source = "./modules/route_table_association"
  subnet1_id = module.pulsar_subnets.subnet1_id
  subnet2_id = module.pulsar_subnets.subnet2_id
  subnet3_id = module.pulsar_subnets.subnet3_id
  public_route_table_id = module.pulsar_route_table.public_route_table_id
}

#security group
module "pulsar_security_group" {
  source = "./modules/security_groups"
  vpc_id = module.pulsar_vpc.pulsar_vpc_id
  security_group_name = var.security_group_name
}

#ec2
module "pulsar_ec2" {
  source = "./modules/ec2"
  subnet1_id = module.pulsar_subnets.subnet1_id
  pulsar_security_group_id = module.pulsar_security_group.pulsar_security_group_id
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  ec2_aws_region = var.ec2_aws_region
  instance_name = var.instance_name
}


#dynamodb
module "pulsar_dynamodb" {
  source = "./modules/dynamodb"
  terraform_locks_table_name = var.terraform_locks_table_name
  billing_mode = var.billing_mode
  hash_key = var.hash_key
}