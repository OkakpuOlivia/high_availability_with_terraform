# resource "aws_lb_target_group" "alb-target-group" {
resource "aws_lb_target_group" "lb-target-group" {
  name     = "lb-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.myvpc.id

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 3
  }
}