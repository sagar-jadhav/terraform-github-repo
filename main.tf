
# GitHub Provider
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.15.1"
    }
  }
}

provider "github" {}

# Repo Name Variable
variable "repo_name" {
  type = string
  default = "sample-repo"
}

# Repo Visibility
variable "visibility" {
  type = string
  default = "private"
}

# Repo Resource
resource "github_repository" "repo" {
  name       = var.repo_name
  visibility = var.visibility
}

# Repo Full Name
output "repo_full_name" {
  value = github_repository.repo.full_name
}