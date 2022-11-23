# Creating Security Group for EC2-Instance named customVM-1
resource "aws_security_group" "manualSecurityGroup" {
  name        = "manualSecurityGroup"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.customVPC-1.id
  vpc_id = var.sg_vpcId #from VPC

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    #cidr_blocks      = ["0.0.0.0/0"]
    #cidr_blocks      = [aws_subnet.customSUBNET-1.cidr_block]
    cidr_blocks       = var.sg_subnetCidrBloack # from subnet
    #ipv6_cidr_blocks = [aws_subnet.customSUBNET-1.ipv6_cidr_block]
  }
  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    #cidr_blocks      = ["0.0.0.0/0"]
    #cidr_blocks      = [aws_subnet.customSUBNET-1.cidr_block]
    cidr_blocks       = var.sg_subnetCidrBloack # from subnet
    #ipv6_cidr_blocks = [aws_subnet.customSUBNET-1.ipv6_cidr_block]
  }
  ingress {
    description      = "RDP"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Allow Any IPv4 Device to use the RDP port
    #cidr_blocks      = [aws_subnet.customSUBNET-1.cidr_block] # Allows any IPv4 devices of this particular CIDR range to use the RDP port
    #ipv6_cidr_blocks = [aws_subnet.customSUBNET-1.ipv6_cidr_block] # Allows any IPv6 devices of this particular CIDR range to use the RDP port
    #ipv6_cidr_blocks = null  # null for not assigning any IPv6 CIDR range
  }

  egress {
    from_port        = 0  # All ports are open
    to_port          = 0  # All ports are open
    protocol         = "-1" # All traffice is allowed
    cidr_blocks      = ["0.0.0.0/0"] # Can connect/communicate to any IPv4 devices in outward direction (egress).
    ipv6_cidr_blocks = ["::/0"] # Can connect/communicate to any IPv6 devices in outward direction (egress).
  }

  tags = var.sg_tag # directly
}