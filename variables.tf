# The projects that will be created - more information is in terraform.tfvars file.
variable "projects" {
  type        = list(map(string))
  description = "The project ID"
}

# Org ID of the main folder of where the projects would be created.
variable "parent_resource" {
  default = "organizations/438956540362"
}

# The folder name the projects would be created in.
variable "folder_name" {
  default = "three_tier_app"
}

# The project where the terraform will run at first.
variable "project" {
  default = "terraform-auth-project-vahan"
}