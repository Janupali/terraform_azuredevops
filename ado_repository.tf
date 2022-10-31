

resource "azuredevops_git_repository" "imported_repo" {
  project_id = azuredevops_project.terraform_ado_project.id
  name       = "Imported Repo"
  initialization {
    init_type = "Import"
    source_type = "Git"
    source_url = "https://github.com/Janupali/terraform_azuredevops"
  }
}
