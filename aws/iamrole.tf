resource "aws_iam_role" "tf_role" {
    name = "tf-role"
    assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::207834583394:root"
            },
            "Action": "sts:AssumeRole",
            "Condition": {}
        }
    ]
})
}