variable "instance_type" {
  default = "t2.medium"
}

variable "instance_name" {
  default = "Jenkins-Server"
}

variable "key_name" {
  default = "jenkins-key"
}

variable "public_subnet_id" {}

variable "security_group_id" {}
