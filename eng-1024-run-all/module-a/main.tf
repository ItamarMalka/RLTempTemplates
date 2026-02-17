resource "null_resource" "module_a" {
  triggers = {
    value = "module-a-eng-1024"
  }
}

output "module_a_id" {
  value = null_resource.module_a.id
}
