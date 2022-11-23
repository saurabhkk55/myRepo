# Associating route table to subnet named customSUBNET-1
resource "aws_route_table_association" "manualSUBNET-a" {
  #subnet_id      = aws_subnet.customSUBNET-1.id
  subnet_id = var.attach_subnetId
  #route_table_id = aws_route_table.customRouteTable-1.id
  route_table_id = var.attach_routeTableId
}