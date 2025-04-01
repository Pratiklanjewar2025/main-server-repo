provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "new_server" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  user_data     = file("userdata.sh")
}

output "new_server_ip" {
  value = aws_instance.new_server.public_ip
}
