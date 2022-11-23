variable "algorithm" {
  type = string
  default = "RSA"
}

variable "keysRsaBits" {
  type = number
  default = 4096
}

variable "keysName" {
  type = string
  default = "manual-public-rsa-Key"
}

variable "fileName" {
  type = string
  default = "manual-Private-Key"
}