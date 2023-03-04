output "vpc_id" {
  value = "aws_vpc.${var.use_case}_vpc.id"
}

output "public_subnet1_id" {
  value = "aws_subnet.${var.use_case}_public_subnet1.id"
}

output "public_subnet2_id" {
  value = "aws_subnet.${var.use_case}_public_subnet2.id"
}

output "private_subnet1_id" {
  value = "aws_subnet.${var.use_case}_private_subnet1.id"
}

output "private_subnet2_id" {
  value = "aws_subnet.${var.use_case}_private_subnet2.id"
}