resource "aws_lb_target_group" "antoinette" {
  name     = "anotionee"
  port     = 80
  protocol = "TCP"
  vpc_id   = aws_vpc.antoinette.id

health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200" 
}

tags = {
  name     = "antoinetteTargetGroup"
  service  = "antoinette"
  owner    = "user"
  Project  = "Web Service"
 }
}