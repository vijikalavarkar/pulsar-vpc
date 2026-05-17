resource "aws_internet_gateway" "pulsar_internet_gateway" {
  vpc_id = var.pulsar_vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}

