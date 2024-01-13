resource "aws_instance" "ec2_instance" {
  count         = 3
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
  key_name      = "popo"


  lifecycle {
    create_before_destroy = true
  }
  }