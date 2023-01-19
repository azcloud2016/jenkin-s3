
provider "aws" {
  access_key = "AKIAX4HH5MUD4AALQHXJ"
  region     = "us-east-2"
  secret_key = "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"
}
# Lines to create a AWS S3 bucket

resource "aws_s3_bucket" "sjt3" {
  bucket = "sjt3"
}

#resource "aws_s3_bucket_acl" "c" {
 # bucket = aws_s3_bucket.b.id
  #acl    = "private"
#}


resource "aws_s3_bucket_public_access_block" "s3_block" {
  block_public_acls       = true
  block_public_policy     = true
  bucket                  = aws_s3_bucket.sjt3.id
  ignore_public_acls      = true
  restrict_public_buckets = true
}