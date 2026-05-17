resource "aws_vpc" "pulsar_vpc" {
  cidr_block       = var.pulsar_cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}