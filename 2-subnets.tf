########################## Public subnets ##########################


resource "aws_subnet" "public_a" {
  vpc_id = aws_vpc.antoinette.id
  # step 1: make VPC
  # step 2: get VPC ID
  # step 3: add VPC ID into vpc_id argument in this subnet 
  # which VPC to create subnet in

  cidr_block              = "10.25.1.0/24"
  availability_zone       = "eu-west-3a" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name = "public-subnet-eu-west-3"
  }
}


resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.antoinette.id
  cidr_block              = "10.25.2.0/24"
  availability_zone       = "eu-west-3b" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name = "public-subnet-eu-west-3b"
  }
}


resource "aws_subnet" "public_c" {
  vpc_id                  = aws_vpc.antoinette.id
  cidr_block              = "10.25.3.0/24"
  availability_zone       = "eu-west-3c" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name = "public-subnet-eu-west-3c"
  }
}







########################## Private subnets ##########################

resource "aws_subnet" "private_a" {
  vpc_id                  = aws_vpc.antoinette.id
  cidr_block              = "10.25.11.0/24"
  availability_zone       = "eu-west-3a" # specify AZ 
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-eu-west-3"
  }
}


resource "aws_subnet" "private_b" {
  vpc_id                  = aws_vpc.antoinette.id
  cidr_block              = "10.25.12.0/24"
  availability_zone       = "eu-west-3b" # specify AZ 
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-eu-west-3b"
  }
}


resource "aws_subnet" "private_c" {
  vpc_id                  = aws_vpc.antoinette.id
  cidr_block              = "10.25.13.0/24"
  availability_zone       = "eu-west-3c" # specify AZ 
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-eu-west-3c"
  }
}