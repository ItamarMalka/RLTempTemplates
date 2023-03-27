terraform {
  backend "remote" {
    hostname = "backend-pr11496.api.dev.env0.com"
    organization = "85e50daf-8893-4532-a852-e528c30f4102"
    workspaces {
      name = "remote-fetch-f"
    }
  }
}

data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-pr11496.api.dev.env0.com"
   organization = "85e50daf-8893-4532-a852-e528c30f4102"
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
