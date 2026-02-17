terraform {
  source = "."
}

dependency "module_a" {
  config_path = "../module-a"

  mock_outputs = {
    module_a_id = "mock-id"
  }

  mock_outputs_allowed_terraform_commands = ["validate", "plan"]
}
