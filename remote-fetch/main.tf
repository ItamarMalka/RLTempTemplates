terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "84e3e591-c57c-4432-b945-f2901cc1b75f"
    workspaces {
      name = "remote-fetch"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
