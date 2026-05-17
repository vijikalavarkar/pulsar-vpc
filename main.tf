terraform {
  backend "s3" {
    bucket = "vijethkalavarkar.bucket"
    key    = "pulsar-support.tfstate"
    region = "us-east-1"
  }
}



# ec2
module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  ec2_aws_region = var.ec2_aws_region
  key_name = var.key_name
  instance_name = var.instance_name
}
