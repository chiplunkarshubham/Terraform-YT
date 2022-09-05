# resource "aws_iam_user" "users" {
#   count = length(var.user_names)
#   name = var.user_names[count.index]
# }

# resource "aws_iam_user" "users" {
#   for_each = var.user_names
#   name     = each.value
# }
