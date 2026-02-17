resource "null_resource" "module_b" {
  triggers = {
    value = "module-b-eng-1024"
  }
}

output "module_b_id" {
  value = null_resource.module_b.id
}
