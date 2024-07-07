provider "aws" {
  AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
  AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  region= "us-west-1"
}
resource "aws_instance" "server4" {
  ami       = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello Guys..!!</h1>" > /var/www/html/index.html
    EOF
}
