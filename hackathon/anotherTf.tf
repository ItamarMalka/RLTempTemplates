provider "nul" {
  
}
resource "null_resource" "hello2" {
  provisioner "local-exec" {
    command = "echo hello world 2"
  }
}
