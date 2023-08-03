# Bombay Softwares
## Details of a project
### Github link --> [github](https://github.com/Naurel1467/bombay-softwares)
### Amplify url --> [amplify](https://main.d31cvgtpaizc70.amplifyapp.com/)

##### To provision the Infrastructure for Amplify with DRY approach using an IAC tool terraform
###### below is the provider block for aws
#
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
```
###### below is the module file
#
```
resource "aws_amplify_app" "bombay-softwares" {
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
  app_id      = aws_amplify_app.bombay-softwares.id
  branch_name = "main"
  stage  = "PRODUCTION"
}
```
###### below is the Setup CI/CD pipeline with Amplify’s inbuilt functionality.
###### amplify.yaml
```
version: 1
applications:
  - frontend:
    phases:
      preBuild:
        commands:
          - npm ci
      build:
        commands:
          - npm run build
    artifacts:
      baseDirectory: .next
      files:
        - "**/*"
    cache:
      paths:
        - node_modules/**/*
appRoot: Next-Amplify
```


## Requirements

| Name | Version |
|------|---------|
| [terraform version used](#requirement\_terraform) | = 1.5.4. |
| [aws](#requirement\_aws) | >= 5.10.0 |

## Providers

| Name | Version |
|------|---------|
|[aws](#provider\_aws) | >= 5.10.0|

# Bombay Softwares
## Details of a project
### Github link --> [github](https://github.com/Naurel1467/bombay-softwares)
### Amplify url --> [amplify](https://main.d31cvgtpaizc70.amplifyapp.com/)

##### To provision the Infrastructure for Amplify with DRY approach using an IAC tool terraform
###### below is the provider block for aws
#
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
```
###### below is the module file
#
```
resource "aws_amplify_app" "bombay-softwares" {
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
  app_id      = aws_amplify_app.bombay-softwares.id
  branch_name = "main"
  stage  = "PRODUCTION"
}
```
###### below is the Setup CI/CD pipeline with Amplify’s inbuilt functionality.
###### amplify.yaml
```
version: 1
applications:
  - frontend:
    phases:
      preBuild:
        commands:
          - npm ci
      build:
        commands:
          - npm run build
    artifacts:
      baseDirectory: .next
      files:
        - "**/*"
    cache:
      paths:
        - node_modules/**/*
appRoot: Next-Amplify
```


## Requirements

| Name | Version |
|------|---------|
| [terraform version used](#requirement\_terraform) | = 1.5.4. |
| [aws](#requirement\_aws) | >= 5.10.0 |

## Providers

| Name | Version |
|------|---------|
|[aws](#provider\_aws) | >= 5.10.0|

After provisioning the infra triggered the pipeline from aws console in amplify
after that for every commit on main branch it will auto trigger the pipeline

## Resources

| Name | Type |
|------|------|
| [aws_amplify_app.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/amplify_app) | resource |
| [aws_amplify_branch.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/amplify_branch) | resource |
