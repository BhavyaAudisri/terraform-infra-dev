resource "aws_network_acl" "expense" {
  vpc_id = local.vpc_id
  subnet_ids = local.subnet_ids

  egress {
    protocol   = "tcp"
    rule_no    = 10
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 32768
    to_port    = 65535
  }

 egress {
    protocol   = "tcp"
    rule_no    = 20
    action     = "allow"
    cidr_block = "10.0.11.0/24"
    from_port  = 80
    to_port    = 80
  }
   egress {
    protocol   = "tcp"
    rule_no    = 30
    action     = "allow"
    cidr_block = "10.0.12.0/24"
    from_port  = 80
    to_port    = 80
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 10
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

ingress {
    protocol   = "tcp"
    rule_no    = 20
    action     = "allow"
    cidr_block = "10.0.11.0/24"
    from_port  = 32768
    to_port    = 65535
  }

ingress {
    protocol   = "tcp"
    rule_no    = 30
    action     = "allow"
    cidr_block = "10.0.12.0/24"
    from_port  = 32768
    to_port    = 65535
  } 
ingress {
    protocol   = "tcp"
    rule_no    = 40
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
 }


  tags = merge (
    var.common_tags,
    {
    Name = "${var.project_name}-${var.environment}"
  }
  )
}