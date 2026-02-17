terraform {
  source = "."
}

dependency "module_a" {
  config_path = "../module-a"

  mock_outputs = {
    module_a_id = "mock-id"
  }
}
