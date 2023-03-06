terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "9f5fbaa6-1fdd-47c1-98fb-19a4eb837723.517e576e-f235-4038-9395-c43676b1276b"
    workspaces {
      name = "env094a087"
    }
  }
}

data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-dev.api.dev.env0.com"
   organization = "9f5fbaa6-1fdd-47c1-98fb-19a4eb837723"
   workspaces = {
     name = "remote-fetch-kaki"
   }
 }
}

resource "null_resource" "null" {
}

output "fetched-test" {
  value = data.terraform_remote_state.test.outputs.test
}
