terraform {
  backend "remote" {
    hostname = "backend-pr11448.api.dev.env0.com"
    organization = "ba33ebb8-ed56-4753-b702-36eaea08173b"
    workspaces {
      name = "remote-fetch-f"
    }
  }
}

data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-pr11448.api.dev.env0.com"
   organization = "ba33ebb8-ed56-4753-b702-36eaea08173b"
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
