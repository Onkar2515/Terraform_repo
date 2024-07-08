provider "aws" {
  access_key = "AKIA47CRWAQBW56WC2XK"
  secret_key = "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"
  region= "us-west-1"
}
resource "aws_instance" "server13" {
  ami       = "ami-0ff591da048329e00"
  instance_type = "t2.micro"
}
