variable "rt_vpcId" {
  type = string
}

variable "rt_cidrBlock" {
  type = string
  default = "0.0.0.0/0"
}

variable "rt_igwID" {
  type = string
}

variable "rt_tag" {
  type = map(any)
  default = {
    "Name" = "manualRouteTable" 
  }
}