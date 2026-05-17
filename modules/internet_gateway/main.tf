resource "aws_internet_gateway" "pulsar_internet_gateway" {
  vpc_id = var.pulsar_vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}


#tester_igw
resource "aws_internet_gateway" "tester_internet_gateway" {
  vpc_id = data.aws_vpc.tester_vpc.id

  tags = {
    Name = var.tester_internet_gateway_name
  }
}