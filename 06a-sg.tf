resource "aws_security_group" "antoinette3-lb" {
  name   = "antoinette-lb-sg"
  vpc_id = aws_vpc.antoinette.id

  tags = {
    names = "this shit is dope 31st"
  }
}

resource "aws_vpc_security_group_ingress_rule" "antoinette-inbounc-lb" {
  security_group_id = aws_security_group.antoinette3-lb.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}


resource "aws_vpc_security_group_egress_rule" "antoinette-outbound-outbound-lb" {

  description       = "outbound"
  security_group_id = aws_security_group.antoinette3-lb.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"


  tags = {
    name = "outbound"
  }
}