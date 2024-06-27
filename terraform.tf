provider "aws" {
  region= "us-west-2"
  access_key = "AKIA47CRWAQBYT7GWPNB"
  secret_key = "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"
}
resource "aws_instance" "server01" {
  ami       = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
}
