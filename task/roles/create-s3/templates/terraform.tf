provider "aws" {
  region     = "us-east-1"
  access_key = "{{SECRETS.aws_access_key}}"
  secret_key = "{{SECRETS.aws_secret_key}}"
}

resource "aws_s3_bucket" "task" {
  bucket = "task-970141"
  tags = {
    Name = "task"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.task.id
  acl    = "private"
}

//resource "null_resource" "copy" {
//    provisioner "local-exec" {
//        command = "aws s3 cp main.tf s3://task-970141/task"
//    }
//}
//
//resource "aws_s3_object" "object" {
//  bucket = "task-970141"
//  key    = "task/main.tf"
//  source = "/home/centos/roboshop-ansible/task/main.tf"
//  etag = filemd5("/home/centos/roboshop-ansible/task/main.tf")
//}