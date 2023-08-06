variable "amplify_app_name" {
    type = string
    description = "name of an app"
    default = "bombay-softwares"
}

variable "github_repo" {
  type = string
  description = "Repository for an Amplify app."
  default = ""
}

variable "platform" {
    type = string
    description = "Platform or framework for an Amplify app. Valid values: WEB, WEB_COMPUTE. Default value: WEB."
    default = "WEB_COMPUTE"
  
}



variable "access_token" {
    type = string
    description = "Personal access token for a third-party source control system for an Amplify app. The personal access token is used to create a webhook and a read-only deploy key. The token is not stored."
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
  default     = {}
}

variable "auto_branch_creation_config" {
  type = object({
    framework                     = optional(string)
    pull_request_environment_name = optional(string)
  })
  description = "The automated branch creation configuration for the Amplify app"
  default     = null
}