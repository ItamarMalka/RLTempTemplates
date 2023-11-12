terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

output "role_arn" {
  value = aws_iam_role.remote_state_access_role.arn
}

output "organization_id" {
  value = var.organization_id
}

output "region" {
  value = var.region
}

output "bucket_name" {
  value = aws_s3_bucket.state_bucket.arn
}