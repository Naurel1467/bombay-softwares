module "amplify" {
    source = "./module/"
    amplify_app_name            = var.amplify_app_name
    platform                    = var.platform
    github_repo                  = var.github_repo
    access_token                = var.access_token
    enable_auto_branch_creation = var.enable_auto_branch_creation
    enable_branch_auto_deletion = var.enable_branch_auto_deletion
    enable_branch_auto_build    = var.enable_branch_auto_build
    iam_service_role_arn        = var.iam_service_role_arn
    environment_variables = var.environment_variables
    framework = var.framework
    
}