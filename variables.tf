resource "random_string" "resource_suffix" {
  length  = 8
  lower   = true
  upper   = false
  number  = false
  special = false
}

locals {
  resource_name = "${data.ns_workspace.this.block}-${random_string.resource_suffix.result}"
}
