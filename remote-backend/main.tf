variable "organizationId" {}
variable "backendHost" {
  default = "backend-dev.api.dev.env0.com"
}

terraform {
  backend "remote" {
    hostname = var.backendHost
    organization = var.organizationId
    workspaces {
      name = "shared-environment-${var.randomEnv}"
    }
  }
}

resource "null_resource" "null1" {
}

resource "null_resource" "fail" {
  provisioner "local-exec" {
    command = "exit 1" # Forces failure
  }
}

resource "null_resource" "null" {
}



output "test" {
  value = "123-456"
}
