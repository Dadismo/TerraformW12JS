resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = var.subnets_list

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}