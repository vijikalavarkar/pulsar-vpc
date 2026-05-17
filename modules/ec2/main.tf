resource "aws_instance" "desco-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id = var.subnet1_id
  vpc_security_group_ids = [ var.pulsar_security_group_id ]
  region = var.ec2_aws_region
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}