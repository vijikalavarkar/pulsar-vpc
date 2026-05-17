# aws region
aws_region = "us-east-1"

#vpc
pulsar_cidr_block = "10.0.0.0/16"
vpc_name = "pulsar_vpc_qa"

#internet gateway
internet_gateway_name = "pulsar_internet_gateway_qa"

#subnet
subnet1_cidr_block = "10.0.1.0/24"
subnet1_az = "us-east-1a"
subnet1_name = "pulsar_public_subnet_1_1a_qa"

subnet2_cidr_block = "10.0.2.0/24"
subnet2_az = "us-east-1a"
subnet2_name = "pulsar_public_subnet_2_1a_qa"

subnet3_cidr_block = "10.0.3.0/24"
subnet3_az = "us-east-1b"
subnet3_name = "pulsar_public_subnet_3_1b_qa"

#route table
public_route_table_cidr_block = "0.0.0.0/0"
route_table_name = "pulsar_public_route_table_qa"

#security group
security_group_name = "pulsar_security_group_qa"

#ec2
ami_id = "ami-05cf1e9f73fbad2e2"
instance_type = "t3.micro"
key_name = "KKey"
ec2_aws_region = "us-east-1"
instance_name = "desco-server_qa"

#dynamodb
terraform_locks_table_name = "pulsar_terraform_locks_qa"
billing_mode = "PAY_PER_REQUEST"
hash_key = "LockID"