resource "google_project_service" "enable_cloud_resource_manager_api" {
  service                    = "cloudresourcemanager.googleapis.com"
  disable_dependent_services = true
  project                    = var.project
}

resource "google_folder" "three_tier_app" {
  display_name = var.folder_name
  parent       = var.parent_resource
  depends_on   = [
    google_project_service.enable_cloud_resource_manager_api
  ]
}
