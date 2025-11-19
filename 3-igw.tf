resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.antoinette.id

  tags = {
    name = "terraform-igw"
  }
}