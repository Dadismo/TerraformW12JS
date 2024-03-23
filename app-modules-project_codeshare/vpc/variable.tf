# variable load balancer
variable "name" {
  default = "lb-test1"
}

variable "port" {
  default = "80"
}

# variable target group
variable "name" {
  default = "tg-module-test"
}

# variable vpc
variable "Name" {
  default = "Terraform-vpc-dev-test"
  type = string
  description = "name tag of our vpc"
}
 variable "cidr" {
  default = "172.120.0.0/16"
  }