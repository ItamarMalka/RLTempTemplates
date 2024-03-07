terraform {
  backend "remote" {
    hostname = "backend-pr14973.api.dev.env0.com"
    organization = "85d4ec47-cea3-45c1-a665-b386ffb2289f"
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
