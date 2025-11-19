resource "aws_lb" "antoinette_alb" {
    name             = "antoinette-load-balancer"
    internal         = false
    load_balancer_type = "application"
    security_groups    = [aws_security_group.antoinette3-lb.id]
    subnets            = [
        aws_subnet.public_a.id,
        aws_subnet.public_b.id,
        aws_subnet.public_c.id
    ]
    enable_deletion_protection = false
}

#    resource "aws_lb_listener" "antoinettehttp" {
#         load_balancer_arn = aws_lb.antoinette_alb.arn
#         port              = 80
# #         protocol          = "HTTP"
    

#     default_action {
#         type              = "forward"
#         target_group_arn  = aws_lb_target_group.antoinette.arn
# }
  

  output "lb_dns-name" {
    value      = aws_lb.antoinette_alb.dns_name
    description = "The DNS name of the antoinete Load Balancer"
}