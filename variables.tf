variable "aws_region" {
  description = "AWS region where the S3 bucket will be created"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used as the S3 bucket prefix"
  type        = string
  default     = "rahul-devops-artifacts"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
