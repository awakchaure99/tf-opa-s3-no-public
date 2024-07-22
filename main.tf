resource "aws_s3_bucket" "opa-test" {
  bucket = "tf-opa-test-bucket"

  tags = {
    Name        = "opa test bucket"
    Environment = "Dev"
  }
}
