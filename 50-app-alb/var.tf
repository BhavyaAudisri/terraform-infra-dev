variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}
variable "zone_id" {
    default = "Z04682941QH8S5QB2E0V1"
}
variable "doamin_name" {
    default = "somisettibhavya.life"
}