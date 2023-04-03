terraform {
  backend "remote" {
    hostname = "backend-pr11569.api.dev.env0.com"
    organization = "e4e070e3-dcaf-417d-926b-3d397353e29c"
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
