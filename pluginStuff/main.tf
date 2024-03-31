terraform {
  required_version = ">= 0.12.20"
}

terraform {
  backend "remote" {
    hostname = "backend-dev.api.dev.env0.com"
    organization = "f816cf52-a950-4747-ac8f-9313f4f78104"
    workspaces {
      name = "shared-environment-757575"
    }
  }
}

resource "null_resource" "null" {
}
