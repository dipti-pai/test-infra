variable "organization" {
  description = "The name of the Azure DevOps organization"
  type        = string
}

variable "pat_token" {
  description = "The Personal Access Token for Azure DevOps"
  type        = string
}

variable "project_name" {
  description = "The name of the Azure DevOps project"
  type        = string
}

variable "repository_name" {
  description = "The name of the Azure DevOps repository"
  type        = string
}

variable "principal_id" {
    description = "The id of the AAD managed identity/user to give access to the Azure DevOps organization"
    type        = string
}

variable "tags" {
  description = "Tags for the created resources"
  type        = map(string)
  default     = {}
}