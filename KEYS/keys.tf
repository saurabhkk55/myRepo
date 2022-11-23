# Creating private key
resource "tls_private_key" "private-rsa-key" {
  algorithm = var.algorithm
  rsa_bits  = var.keysRsaBits
}

# Creating public key from private key reference
resource "aws_key_pair" "public-rsa-Key" {
  key_name   = var.keysName
  #public_key = file("C:/Users/saurabh.kumar.kardam/.ssh/localSystem-Key.pub") 
  public_key = tls_private_key.private-rsa-key.public_key_openssh
}

# Storing private key locally
resource "local_file" "store-keys" {
    content  = tls_private_key.private-rsa-key.private_key_pem
    filename = var.fileName
}