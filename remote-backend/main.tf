terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "17c45f44-1335-4f98-8655-a15a515433e4"
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
