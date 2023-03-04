
resource "aws_subnet" "private_subnet1" {
cidr_block = var.private_subnet1_cidr
availability_zone = var.private_subnet1_zone
vpc_id = aws_vpc.vpc.id
tags = {
  Name = "${var.use_case}_private_subnet1"
  Env = var.env
}
}

resource "aws_subnet" "private_subnet2" {
cidr_block = var.private_subnet2_cidr
availability_zone = var.private_subnet2_zone
vpc_id = aws_vpc.vpc.id
tags = {
  Name = "${var.use_case}_private_subnet2"
  Env = var.env
}
}
