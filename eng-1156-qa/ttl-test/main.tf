terraform {
  required_version = ">= 0.12.20"
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'Deploy succeeded'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "test \"$ALLOW_DESTROY\" = 'true' && echo 'Destroy allowed - ALLOW_DESTROY is set' || (echo 'ERROR: ALLOW_DESTROY env var not set to true - destroy blocked!' && exit 1)"
  }
}
