terraform {
  backend "remote" {
    hostname = "backend-pr14973.api.dev.env0.com"
    organization = "eaf80d77-e792-45ee-9206-fec9d2ec5183"
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
