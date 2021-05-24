provider "aws" {}
data "aws_region" "this" {
  current = true
}
