variable "upstream_value" {
  description = "Value from the producer sub-environment"
  default     = "default-value"
}

resource "null_resource" "consumer" {
  triggers = {
    upstream = var.upstream_value
  }
}

output "consumed_value" {
  value = "consumed-${var.upstream_value}"
}
