# #Provider are plugins used to interact with Cloud Vendors
# terraform {
#   required_providers {
#     github = {
#       source = "integrations/github"
#       version = "4.20.0"
#     }
#   }
# }
#
# provider "github" {
#   token = ""
# }
#
# resource "github_repository" "example" {
#   name        = "example"
#   visibility = "private"
#
#   template {
#     owner      = "github"
#     repository = "my-new-repo"
#   }
# }
# #
