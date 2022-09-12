resource "github_repository_file" "python" {
  for_each            = toset(data.github_repositories.python.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitignore"
  content             = file("./res/python.gitignore")
  commit_message      = "Update .gitignore"
  commit_author       = "actions"
  commit_email        = "actions@github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "terraform" {
  for_each            = toset(data.github_repositories.terraform.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitignore"
  content             = file("./res/terraform.gitignore")
  commit_message      = "Update .gitignore"
  commit_author       = "actions"
  commit_email        = "actions@github.com"
  overwrite_on_create = true
}