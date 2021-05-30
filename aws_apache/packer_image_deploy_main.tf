
provider "aws" {
  region        = "ap-south-1"
  profile       = "default"

  }


resource "aws_instance" "web_server" {
  ami             = "ami-0bfea82e3463aabec"
  instance_type   = "t2.micro"
  key_name        = "MUMKEY"
  security_groups = ["DevOpsSG"]

  tags = {
    Name = "web_server"
  }

}




