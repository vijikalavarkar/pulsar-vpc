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
