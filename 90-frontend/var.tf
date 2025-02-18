
variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "domain_name" {
  default = "somisettibhavya.life"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}
variable "instance_type" {
  default = "t3.micro"
}
variable "zone_id" {
    default = "Z04682941QH8S5QB2E0V1"
}