variable "sg_subnetCidrBloack" {
    type = list(string)
}

variable "sg_vpcId" {
  type = string
}

variable "sg_tag" {
  type = map(any)
  default = {
    "Name" = "manualSecurityGroup"
  }
}