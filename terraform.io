provider "aws" {
  region="us-west-2"
  access_key ="AKIA47CRWAQBYT7GWPNB"
  secret_key ="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"

}
resource "aws_instance" "server01" {
  ami       = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
}
