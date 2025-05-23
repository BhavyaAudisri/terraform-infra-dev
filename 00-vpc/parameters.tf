resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
  #overwrite = true
}
resource "aws_ssm_parameter" "eip_id" {
  name  = "/${var.project_name}/${var.environment}/eip_id"
  type  = "String"
  value = module.vpc.elastic_ip
 #overwrite = true
}
resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public-subnet_ids"
  type = "StringList"
  value = join(",", module.vpc.public_subnet_ids)
  #overwrite = true
}
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private-subnet_ids"
  type = "StringList"
  value = join(",", module.vpc.private_subnet_ids)
  #overwrite = true
}
resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/database-subnet_ids"
  type = "StringList"
  value = join(",", module.vpc.database_subnet_ids)
  #overwrite = true
 }
resource "aws_ssm_parameter" "database_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/db_subnet_group_name"
  type = "String"
  value =  module.vpc.database_subnet_group_name
  #overwrite = true
 }
