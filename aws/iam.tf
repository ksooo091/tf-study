resource "aws_iam_user" "tfstudyuser"{
 name = "tfstudyuser"
}

# resource "aws_iam_access_key" "tfstudyuser" {
#   user = aws_iam_user.tfstudyuser.name
# }

resource "aws_iam_group" "iamg_tfstudy"{
 name = "tfstudy"
}