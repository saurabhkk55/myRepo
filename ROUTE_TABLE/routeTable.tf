resource "aws_route_table" "manualRouteTable" {
  #vpc_id = aws_vpc.example.id
  vpc_id= var.rt_vpcId # from VPC

  route {
    cidr_block = var.rt_cidrBlock # directly
    #gateway_id = aws_internet_gateway.example.id
    gateway_id = var.rt_igwID # from internet gateway
  }

  tags = var.rt_tag # directly
}