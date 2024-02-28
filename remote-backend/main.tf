variable "organizationId" {}
variable "backendHost" {
  default = "backend-dev.api.dev.env0.com"
}
# Defined in the env0.yml
variable "randomEnv" {}

locals {
  host = var.backendHost
  org = var.organizationId
  env = var.randomEnv
}
terraform {
  backend "remote" {
    hostname = local.host
    organization = local.org
    workspaces {
      name = "shared-environment-${local.env}"
    }
  }
}

resource "null_resource" "null" {
}


output "test" {
  value = "123-456"
}
