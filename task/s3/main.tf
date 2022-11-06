provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "private_bucket" {
  bucket = "task-999888"
  tags = {
    Name = "task"
  }
}

resource "aws_s3_bucket_acl" "private_bucket" {
  bucket = aws_s3_bucket.private_bucket.id
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