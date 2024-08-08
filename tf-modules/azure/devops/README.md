# DevOps Module

Configuration in this directory creates an Azure DevOps Project and repository.

## Usage

```hcl
provider "azuredevops" {
  org_service_url       = "https://dev.azure.com/azuredevops_org"
  personal_access_token = "azuredevops_pat"
}

module "devops" {
  source = "git::https://github.com/fluxcd/test-infra.git//tf-modules/azure/devops"
  providers = {
    azuredevops = azuredevops
  }
  
  project_name = local.project_name
  repository_name = local.repo_name
}
```
