variable "ec2_ami" {
  type = string
  default = "ami-06d7c194437cc8e87"
}

variable "ec2_instanceType" {
  type = string
  default = "t2.micro"
}

variable "ec2_vpcSecurityGroupIds" {
  type = list(string)
}

variable "ec2_subnetId" {
  type = string
}

variable "ec2_publicKeyName" {
  type = string
}

variable "tag" {
  type = map(any)
  default = {
    "Name" = "manualVM"
  }
}