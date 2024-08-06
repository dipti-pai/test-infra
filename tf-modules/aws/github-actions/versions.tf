terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40"
    }

    github = {
      source  = "integrations/github"
      version = ">= 6.2"
    }
  }
}
