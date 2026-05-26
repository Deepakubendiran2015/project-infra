output "instance_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "instance_id" {
  value = aws_instance.jenkins_server.id
}

output "key_pair_name" {
  value = aws_key_pair.jenkins_key.key_name
}
