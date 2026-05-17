data "aws_subnet" "pulsar_public_subnet_1_1a" {
  id = "subnet-0851820dfb2166830"
}

data "aws_security_group" "pulsar_security_group" {
  id = "sg-0aaab01cd6ad19909"
}