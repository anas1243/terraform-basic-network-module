
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.use_case}_igw"
    Env = var.env
  }
}


resource "aws_eip" "nat1_eip" {
  tags = {
  Name = "${var.use_case}_nat1_eip"
  Env = var.env
}
}

resource "aws_nat_gateway" "public1_ngw" {
  allocation_id = aws_eip.nat1_eip.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "${var.use_case}_NAT1"
    Env = var.env
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}