resource "null_resource" "single_module" {
  triggers = {
    value = "single-module-eng-1024"
  }
}

output "single_module_id" {
  value = null_resource.single_module.id
}
