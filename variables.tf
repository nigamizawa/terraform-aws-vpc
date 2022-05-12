variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "cidr_block" {
  type = string
}

variable "name" {
  type = string
}

variable "enable_internet_gateway" {
  type = bool
  default = true
}

variable "enable_default_security_group" {
  type = bool
  default = true
}

variable "tags" {
  type        = map(string)
  default     = {}
}
