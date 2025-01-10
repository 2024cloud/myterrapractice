
resource "aws_instance" "app_server" {
  ami           = "ami-07b69f62c1d38b012"
  instance_type = "t2.nano"
  tags = {
    Name = "TestAppInMumbai"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-05576a079321f21f8"
  instance_type = "t2.nano"
  provider = aws.virginia
  tags = {
    Name = "TestAppInVirginia"
  }
}
