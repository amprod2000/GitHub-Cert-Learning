terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

resource "github_branch" "development" {
  repository = "GitHub-Cert-Learning"
  branch     = "sdks"
}