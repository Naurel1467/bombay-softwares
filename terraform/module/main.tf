resource "aws_amplify_app" "example" {
  name                        = var.amplify_app_name
  platform                    = var.platform
  repository                  = var.github_repo
  access_token                = var.access_token
  enable_auto_branch_creation = var.enable_auto_branch_creation
  enable_branch_auto_deletion = var.enable_branch_auto_deletion
  enable_branch_auto_build    = var.enable_branch_auto_build
  iam_service_role_arn        = var.iam_service_role_arn
  auto_branch_creation_config {
    framework = var.framework
    stage = "PRODUCTION"
  }
  environment_variables = var.environment_variables
}

resource "aws_amplify_branch" "myapp_branch" {
  app_id      = aws_amplify_app.example.id
  branch_name = "main"
  stage  = "PRODUCTION"
}