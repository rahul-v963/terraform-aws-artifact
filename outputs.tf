output "bucket_name" {
  description = "Name of the S3 artifact bucket"
  value       = aws_s3_bucket.artifact_store.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 artifact bucket"
  value       = aws_s3_bucket.artifact_store.arn
}

output "aws_region" {
  description = "AWS region used for the deployment"
  value       = var.aws_region
}
