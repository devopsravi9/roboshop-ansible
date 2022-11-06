provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "private_bucket" {
  bucket = "task-999888"
  tags = {
    Name = "task"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.private_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}



//resource "null_resource" "copy" {
//    provisioner "local-exec" {
//        command = "aws s3 cp main.tf s3://task-970141/task"
//    }
//}
//
