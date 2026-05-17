resource "aws_subnet" "pulsar_public_subnet_1_1a" {
  vpc_id     = var.pulsar_vpc_id
  cidr_block = var.subnet1_cidr_block
  availability_zone = var.subnet1_az

  tags = {
    Name = var.subnet1_name
  }
}

resource "aws_subnet" "pulsar_public_subnet_2_1a" {
  vpc_id     = var.pulsar_vpc_id
  cidr_block = var.subnet2_cidr_block
  availability_zone = var.subnet2_az

  tags = {
    Name = var.subnet2_name
  }
}

resource "aws_subnet" "pulsar_public_subnet_3_1b" {
  vpc_id     = var.pulsar_vpc_id
  cidr_block = var.subnet3_cidr_block
  availability_zone = var.subnet3_az

  tags = {
    Name = var.subnet3_name
  }
}