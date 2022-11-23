# creating EC2-Instance
resource "aws_instance" "manualVM" {
  ami           =  var.ec2_ami # ap-south-1 (Mumbai), directly
  instance_type = var.ec2_instanceType # directly
  #vpc_id     = aws_vpc.customVPC-1.id
  

  #security_groups = [aws_security_group.customSecurityGroup-1.name]  # Throwing error
  #vpc_security_group_ids = ["${aws_security_group.customSecurityGroup-1.id}"] # Working perfectly, no error.
  vpc_security_group_ids = var.ec2_vpcSecurityGroupIds # from security group

  #subnet_id = "$(aws_subnet.customSUBNET-1.id)"  # Throwing error
  #subnet_id = aws_subnet.customSUBNET-1.id # Working perfectly, no error.
  subnet_id = var.ec2_subnetId # from Subnet
  
  key_name = var.ec2_publicKeyName # from Keys
  tags = var.tag
}