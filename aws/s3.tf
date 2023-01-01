resource "aws_s3_bucket" "study-bucket" {
  bucket = "my-tf-test-bucket-11992"

  tags = {
    Name        = "Study bucket"
    Environment = "test"
  }
}

# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.b.id
#   acl    = "private"
# }