# outputs.tf
# Useful outputs after applying the sample stack.

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "app_server_public_ip" {
  description = "Public IP address of the app server"
  value       = aws_instance.app_server.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 application bucket"
  value       = aws_s3_bucket.app_bucket.bucket
}

