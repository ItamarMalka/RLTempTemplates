terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "9f5fbaa6-1fdd-47c1-98fb-19a4eb837723"
    workspaces {
      name = "my-migrate-test"
    }
  }
}

resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

resource "null_resource" "null33" {
}
