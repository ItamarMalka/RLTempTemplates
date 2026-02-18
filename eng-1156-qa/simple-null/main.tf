resource "null_resource" "simple" {
  triggers = {
    timestamp = timestamp()
  }
}

output "test_output" {
  value = "hello-from-simple"
}
