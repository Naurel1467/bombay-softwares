variable "amplify_app_name" {
    type = string
    description = "name of an app"
    default = "bombay-softwares"
}

variable "github_repo" {
  type = string
  default = "https://github.com/Naurel1467/bombay-softwares"
}

variable "platform" {
    type = string
    default = "WEB_COMPUTE"
  
}



variable "access_token" {
    type = string
    default = ""
  
}

variable "iam_service_role_arn" {
    type = string
    default = ""
}

variable "framework" {
    type = string
    default = "Next.js"
  
}

variable "enable_auto_branch_creation" {
  type = bool
  default = false
}

variable "enable_branch_auto_deletion" {
    type = bool
    default = false
}

variable "enable_branch_auto_build" {
    type = bool
    default = true
}

variable "environment_variables" {
  type        = map(string)
  description = "The environment variables for the Amplify app"
  default     = {
    AMPLIFY_MONOREPO_APP_ROOT = "Next-Amplify"
    AMPLIFY_DIFF_DEPLOY = false

  }
}