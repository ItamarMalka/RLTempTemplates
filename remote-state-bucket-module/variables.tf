variable "organization_id" {
  description = "Your env0 organization ID, this would be used as an externalId for the IAM role"
}

variable "state_bucket_name" {
  description = "The name of the state s3 bucket"
}

variable "region" {
    description = "The aws account region to deploy the state bucket in"
}