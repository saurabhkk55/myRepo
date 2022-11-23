resource "aws_vpc" "manualVPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy

  tags = var.vpc_tags
}