module "folders" {
  source = "./modules/hierarchy/folders"

  project         = var.project
  folder_name     = var.folder_name
  parent_resource = var.parent_resource
}
locals {
  folder_id = module.folders.parent_folder_id
}
module "projects" {
  source = "./modules/hierarchy/projects"

  projects   = var.projects
  depends_on = [module.folders.folder_id]
  folder_id = local.folder_id
} 