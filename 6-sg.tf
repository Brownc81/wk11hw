resource "aws_security_group" "antoinette3" {
  name   = "sg"
  vpc_id = aws_vpc.antoinette.id

  tags = {
    names = "this shit is dope 31st"
  }
}

resource "aws_vpc_security_group_ingress_rule" "antoinette" {
  security_group_id = aws_security_group.antoinette3.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "antoinette22" {
  security_group_id = aws_security_group.antoinette3.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

# resource "aws_vpc_security_group_ingress_rule" "antoinette-3339" {
#   security_group_id = aws_security_group.antoinette3.id

#   cidr_ipv4   = "0.0.0.0/0"
#   from_port   = 3389
#   ip_protocol = "tcp"
#   to_port     = 3389
# }

resource "aws_vpc_security_group_egress_rule" "antoinette-outbound" {

  description       = "outbound"
  security_group_id = aws_security_group.antoinette3.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"


  tags = {
    name = "outbound"
  }
}