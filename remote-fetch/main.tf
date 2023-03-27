terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "85e50daf-8893-4532-a852-e528c30f4102"
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
