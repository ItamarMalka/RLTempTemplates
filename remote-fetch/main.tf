terraform {
  backend "remote" {
    hostname = "backend-pr11590.api.dev.env0.com"
    organization = "dda96272-eece-4699-8efb-6446205377ea"
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
