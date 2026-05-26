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

#Internet Gateway output
output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

#ROUTE TABLE
output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}

#SECURITY GROUP OUTPUT 
output "security_group_id" {
  value = aws_security_group.jenkins_sg.id
}
