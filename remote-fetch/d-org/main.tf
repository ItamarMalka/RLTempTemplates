terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "9f5fbaa6-1fdd-47c1-98fb-19a4eb837723"
    workspaces {
      name = "remote-fetch-d-org"
    }
  }
}

data "terraform_remote_state" "test" {
 backend = "remote"
 config = {
   hostname     = "backend-dev.api.dev.env0.com"
   token        = "bWRtbHY2dzZiZWh4NWVpbzp3MjBFaG5tbWcwNFJlVlpRNDhzMWIzUUtlYWU5SWtvUA=="
   organization = "632adae1-e8cc-4cce-8176-f877c615a2c4"
   workspaces = {
     name = "remote-fetch-f2"
   }
 }
}

resource "null_resource" "null" {
}

output "fetched-test" {
  value = data.terraform_remote_state.test.outputs.test
}
