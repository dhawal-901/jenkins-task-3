resource "aws_lb_target_group" "my_target_group_1" {
  name     = local.Environment.target_group_1_name
  port     = 8080
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id
  health_check {
    path                = "/login"
    port                = "8080"
    protocol            = "HTTP"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_target_group_attachment" "my_target_group_1_attachment" {
  for_each = {
    for k, v in aws_instance.my_private_instance :
    k => v
  }
  target_group_arn = aws_lb_target_group.my_target_group_1.arn
  target_id        = each.value.id
  port             = 8080
}

resource "aws_lb_target_group" "my_target_group_2" {
  name     = local.Environment.target_group_2_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id
  health_check {
    path                = "/"
    port                = "80"
    protocol            = "HTTP"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_target_group_attachment" "my_target_group_2_attachment" {
  for_each = {
    for k, v in aws_instance.my_private_instance :
    k => v
  }
  target_group_arn = aws_lb_target_group.my_target_group_2.arn
  target_id        = each.value.id
  port             = 80
}
