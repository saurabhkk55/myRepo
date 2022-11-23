output "SubnetId" {
  value = aws_subnet.manualSUBNET.id
}

output "subnetCidr" {
  value = [aws_subnet.manualSUBNET.cidr_block]
}