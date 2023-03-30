terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "632adae1-e8cc-4cce-8176-f877c615a2c4"
    workspaces {
      name = "remote-fetch-f2"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
