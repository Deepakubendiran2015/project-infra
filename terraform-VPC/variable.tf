#AWS VPC VARIABLE
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "main-vpc"
}

#PUBLIC SUBNET VARIABLE
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

#PRIVATE SUBNET VARIABLE
variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

#IGW VARIABLE
variable "igw_name" {
  default = "main-igw"
}
#ROUTE TABLE VARIABLE
variable "public_route_table_name" {
  default = "public-route-table"
}
