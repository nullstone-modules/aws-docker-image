output "region" {
  value = data.aws_region.this.name
}

output "service_name" {
  value       = "envoy"
  description = "string ||| "
}

output "image_repo_name" {
  value       = aws_ecr_repository.this.name
  description = "string ||| "
}

output "image_repo_url" {
  value       = aws_ecr_repository.this.repository_url
  description = "string ||| "
}

output "image_pusher" {
  value = {
    name       = aws_iam_user.image_pusher.name
    access_key = aws_iam_access_key.image_pusher.id
    secret_key = aws_iam_access_key.image_pusher.secret
  }

  description = "object({ name: string, access_key: string, secret_key: string }) ||| An AWS User with explicit privilege to push images."

  sensitive = true
}
