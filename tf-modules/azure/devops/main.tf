module "tags" {
  source = "git::https://github.com/fluxcd/test-infra.git//tf-modules/utils/tags"

  tags = var.tags
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/${var.organization}"
  personal_access_token = var.pat_token
}

resource "azuredevops_project" "project" {
  name               = var.project_name
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Test Project for Flux E2E test - Managed by Terraform"
}

resource "azuredevops_git_repository" "application" {
  project_id = azuredevops_project.project.id
  name       = var.repository_name
  default_branch = "refs/heads/main"
  initialization {
    init_type = "Clean"
  }
}