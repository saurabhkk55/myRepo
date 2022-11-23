variable "subnet_vpc_id" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "manualSUBNET"
  }
}