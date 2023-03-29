variable "projects" {
  type        = list(map(string))
  description = "The project ID"
}

variable "folder_id" {
  default = "folder-id"  
}