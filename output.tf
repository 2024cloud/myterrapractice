output "app_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "web_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web_server.id
}

output "app_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "app_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.app_server.private_ip
}

output "web_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "web_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.web_server.private_ip
}