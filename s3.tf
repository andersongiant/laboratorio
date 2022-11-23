resource "aws_s3_bucket" "otacilio" {
  bucket = "otacilio"
}

resource "aws_s3_bucket_acl" "otacilio" {
  bucket = aws_s3_bucket.otacilio.id
  acl    = "private"
}