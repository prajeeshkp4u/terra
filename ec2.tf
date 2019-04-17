provider "aws" {
  access_key = "AKIAJ7S5LILWV3TJ4UEQ"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-5b673c34"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"

 tags = {
   Name = "terra ec2 from jenkins"
  }
}
