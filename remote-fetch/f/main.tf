terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "84e3e591-c57c-4432-b945-f2901cc1b75f"
    workspaces {
      name = "fetching-env"
    }
  }
}

data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-dev.api.dev.env0.com"
   organization = "84e3e591-c57c-4432-b945-f2901cc1b75f"
   workspaces = {
     name = "shared-environment"
   }
 }
}

resource "null_resource" "null" {
}

output "fetched-test" {
  value = "fetched-${data.terraform_remote_state.test.outputs.test}"
}
