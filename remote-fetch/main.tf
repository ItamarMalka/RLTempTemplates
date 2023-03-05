terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "9f5fbaa6-1fdd-47c1-98fb-19a4eb837723.517e576e-f235-4038-9395-c43676b1276b"
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
