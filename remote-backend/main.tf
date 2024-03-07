terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "b126d0a3-ff45-4da2-a0e7-96aa3651dbb9"
    workspaces {
      name = "RLTempTemplates-remote-backend-77647667"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
