resource "aws_ssm_parameter" "app_alb" {
  name  = "/${var.project_name}/${var.environment}/app_alb"
  type  = "String"
  value = module.alb.arn
  overwrite = true
}

resource "aws_ssm_parameter" "app_alb_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
  type  = "String"
  value = aws_lb_listener.http.arn
}