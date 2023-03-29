output "created_folder_id" {
  value       = module.folders.parent_folder_id
  description = "The ID of the created GCP folder"
}
