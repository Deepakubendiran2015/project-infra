#VPC
output "vpc_id" {
  value = aws_vpc.main.id
}

#private subnet output 
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

#private subnet output
output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}
