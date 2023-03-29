resource "google_project" "project" {
  for_each        = { for project in var.projects : project.project_id => project }
  name            = each.value.name
  project_id      = each.value.project_id
  billing_account = each.value.billing_account
  folder_id       = var.folder_id
  auto_create_network = false
}
