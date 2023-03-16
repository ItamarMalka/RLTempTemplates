terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "00a043d9-971b-45e6-99f3-8a689b3715c9"
    workspaces {
      name = "remote-fetch-kaki"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
