terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "3422c4cf-f9ed-4585-9041-ffa39839d7ff"
    workspaces {
      name = "shared-environment-123123"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
