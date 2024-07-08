provider "aws" {
  access_key = "" 
  secret_key = ""
  region= "us-west-1"
}
resource "aws_instance" "server13" {
  ami       = "ami-0ff591da048329e00"
  instance_type = "t2.micro"
}
