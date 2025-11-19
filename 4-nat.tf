resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "terraform-eip-for-nat"
  }

  depends_on = [aws_internet_gateway.main] # explict dependency 
}