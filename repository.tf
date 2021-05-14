resource "aws_ecr_repository" "this" {
  name = local.resource_name
  tags = data.ns_workspace.this.tags
}
