# Variables for VPC #############################################
variable "vpc_cidr" {
  description = "VPC cidr_block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_tenancy" {
  description = "VPC instance_tenancy"
  type        = string
  default     = "default"
}

variable "vpc_tags" {
  description = "VPC tags"
  type        = map(any)
  default = {
    "Name" = "manualVPC"
  }
}