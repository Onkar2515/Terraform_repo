provider "aws" {
  access_key = credentials("AWS_ACCESS_KEY_ID")
  secret_key = credentials("AWS_SECRET_ACCESS_KEY")
  region= "us-west-1"
}
resource "aws_instance" "server12" {
  ami       = "ami-0ff591da048329e00"
  instance_type = "t2.micro"
}
