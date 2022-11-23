variable "igw_vpcId" {
  type = string
}

variable "igw" {
  type = map(any)
  default = {
    "Name" = "manualInternetGateway"
  }
}