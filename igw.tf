resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.esraa_vpc.id
  tags = {
    Name        = "igw"
  }
}