locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}


terraform {
  before_hook "before_hook" {
    commands     = ["apply", "plan", "output"]
    execute      = ["echo", "Running Terraform 123"]
  }
  before_hook "before_hook_2" {
    commands     = ["apply", "plan", "output"]
    execute      = ["echo", "Running Terraform 876"]
  }
  after_hook "after_hook" {
    commands     = ["apply", "plan", "output"]
    execute      = ["echo", "Running Terraform after 123"]
  }
}

generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null" {
}
resource "null_resource" "null2" {
}
EOF
}
