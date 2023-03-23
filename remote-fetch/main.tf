terraform {
  backend "remote" {
    hostname = "backend-pr11477.api.dev.env0.com"
    organization = "7b14a383-bf03-49bd-ace2-af648fe28a07"
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
