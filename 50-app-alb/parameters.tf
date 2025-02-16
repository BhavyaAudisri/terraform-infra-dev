resource "aws_ssm_parameter" "app_alb" {
  name  = "/${var.project_name}/${var.environment}/alb/arn"
  type  = "String"
  value = module.alb.arn
  #overwrite = true
}