provider "aws" {
  AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
  AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  region= "us-west-1"
}
resource "aws_instance" "server11" {
  ami       = "ami-0ff591da048329e00"
  instance_type = "t2.micro"
}
