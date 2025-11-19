resource "aws_instance" "antoinette-31st" {
  ami                         = "ami-09968b16214ef62ce"
  associate_public_ip_address = true
  instance_type               = "t3.micro"
  #key name =
  vpc_security_group_ids = [aws_security_group.antoinette3.id]
  subnet_id              = aws_subnet.public_a.id

  user_data                   = file("user_data.sh")
  user_data_replace_on_change = true

  tags = {
    Name = "31st"
  }
}