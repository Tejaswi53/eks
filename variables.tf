variable "cluster_name" {
  type    = string
  default = ""
}

variable "cluster_version" {
  type    = string
  default = ""
}

variable "ami_type" {
  type    = string
  default = ""
}

variable "instance_types" {
  type    = string
  default = ""
}

variable "min_size" {
  type    = number
  default = 0
}

variable "max_size" {
  type    = number
  default = 3
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "environment" {
  type    = string
  default = ""
}

variable "managed" {
  type    = string
  default = ""
}
