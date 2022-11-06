resource "aws_s3_object" "object" {
  bucket = "task-999888"
  key    = "task/samplefile"
  source = "/home/centos/roboshop-ansible/task/samplefile"
  etag = filemd5("/home/centos/roboshop-ansible/task/samplefile")
}