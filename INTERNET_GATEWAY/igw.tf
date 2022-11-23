resource "aws_internet_gateway" "manualInternetGateway" {
  #vpc_id = aws_vpc.main.id
  vpc_id = var.igw_vpcId # from VPC

  tags = var.igw # directly
}