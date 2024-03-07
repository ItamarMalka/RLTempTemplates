terraform {
  backend "remote" {
    hostname = "backend-pr14973.api.dev.env0.com"
    organization = "d43b1dbc-225b-4aaa-bf20-4d3f6f516a49"
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
