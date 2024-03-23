module "Load-balancer" {
  source = "../ALB"
  name = "loadbalancertesting"
  subnets_list = [ "${us-east-1a}", "${us-east-1b}" ]
}