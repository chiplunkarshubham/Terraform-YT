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
#   token = "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"
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
