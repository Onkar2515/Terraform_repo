provider "aws" {
  access_key = "" 
  secret_key = ""
  region= "us-west-1"
}
resource "aws_instance" "server3" {
  ami       = "ami-0ff591da048329e00"
  instance_type = "t2.micro"
  user_data = <<EOF
#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
sudo echo "Hello Guys" > /var/www/html/index.html
EOF
}
