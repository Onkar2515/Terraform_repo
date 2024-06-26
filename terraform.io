provider "aws" {
  region="us-west-2"
  access_key

}
resource "aws_instance" "server01" {
  ami       = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
}
