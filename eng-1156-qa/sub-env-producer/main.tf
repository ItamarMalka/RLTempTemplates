variable "env_name" {
  default = "producer"
}

resource "null_resource" "producer" {
  triggers = {
    name = var.env_name
  }
}

output "produced_value" {
  value = "value-from-${var.env_name}"
}
