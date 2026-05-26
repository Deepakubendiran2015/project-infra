#VPC
output "vpc_id" {
  value = aws_vpc.main.id
}

subnet output 
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}
