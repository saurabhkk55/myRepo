resource "aws_subnet" "manualSUBNET" {
  #vpc_id     = aws_vpc.manualVPC.id
  vpc_id = var.subnet_vpc_id # from VPC
  cidr_block = var.subnet_cidr_block # directly
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = "true" # to make it a public subnet. Pass "false" to make it a private subnet
  tags = var.subnet_tag # directly
}