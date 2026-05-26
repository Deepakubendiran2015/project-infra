#AWS VPC 
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "main-vpc"
}

#pubilc subnet variable
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

#private subnet variable
variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}
