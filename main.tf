resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = "github-terraform-task-Bronsborought"
  username   = "softservedata"
  permission = "collaborator"
}

resource "github_repository" "example" {
  name        = "github-terraform-task-Bronsborought"
  description = "My awesome codebase"
  auto_init   = true
}

resource "github_branch" "develop" {
  repository = github_repository.example.name
  branch     = "develop"
}

resource "github_branch_default" "default"{
  repository = github_repository.example.name
  branch     = github_branch.develop.branch
}