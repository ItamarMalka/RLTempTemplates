terraform {
  backend "remote" {
    hostname = "backend-pr11562.api.dev.env0.com"
    organization = "865b7b96-2b75-442d-8a47-c35d39b5683e"
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
