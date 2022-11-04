provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "task" {
  bucket = "task-970141"
  tags = {
    Name = "task"
  }
}

resource "null_resource" "copy" {
    provisioner "local-exec" {
        command = "aws s3 cp main.tf s3://task-970141/task"
    }
}