# resource "aws_vpc" "tf_vpc" {
#   cidr_block = "192.168.0.0/16"

#   tags = {
#     Name = "terraform_test"
#   }
# }
# resource "aws_subnet" "tf_public_sb_a" {
#   vpc_id = aws_vpc.tf_vpc.id
#   cidr_block = "192.168.1.0/24"
#   availability_zone = "ap-northeast-2a"
#   tags = {
#     Name = "subnet-terraform"
#   }
# }