provider "random" {}

resource "random_string" "random" {
  length = 16
  special = false
  min_lower = 16
}

resource "null_resource" "resource" {
}

output "null_resource_id" {
  description = "The `id` of the `null_resource` resource in this module."
  value       = "${null_resource.resource.id}"
}
