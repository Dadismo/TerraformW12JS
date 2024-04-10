variable "subnets_list" {
  type = list(string)
  default = [ "${us-east-1a}", "${us-east-1b}", "${us-east-1c}" ]
}

variable "name" {
  type = strinG
  default = "ALB-TEST"
}