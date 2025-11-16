# publish_bucket/bucket-and-cloudfront.tf
variable "name" {
  type = string
} # this is the input parameter of the module

resource "aws_s3_bucket" "example" {
  bucket = var.name
}
