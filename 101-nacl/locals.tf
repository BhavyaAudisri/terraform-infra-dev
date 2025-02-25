locals{
    https_certificate_arn = data.aws_ssm_parameter.https_certificate_arn.value
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    subnet_ids= split(",", data.aws_ssm_parameter.public_subnet_ids.value)
}