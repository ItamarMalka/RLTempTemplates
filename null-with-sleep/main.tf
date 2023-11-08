terraform {
  required_version = ">= 0.12.20"
}

resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

resource "null_resource" "null33" {
}

resource "random_id" "random" {
  byte_length = 4000000
}

output "long1" {
  value= random_id.random.hex
}

output "long2" {
  value= random_id.random.hex
}
