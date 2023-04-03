terraform {
  backend "remote" {
    hostname = "backend-pr11569.api.dev.env0.com"
    organization = "e4e070e3-dcaf-417d-926b-3d397353e29c"
    workspaces {
      name = "remote-fetch-f"
    }
  }
}
data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-pr11569.api.dev.env0.com"
   organization = "e4e070e3-dcaf-417d-926b-3d397353e29c"
   workspaces = {
     name = "remote-fetch"
   }
 }
}

resource "null_resource" "null" {
}

output "fetched-test" {
  value = data.terraform_remote_state.test.outputs.test
}
