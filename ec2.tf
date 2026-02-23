resource "aws_instance" "server1" {
  ami                    = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type          = "t2.micro"
  user_data              = file("setup.sh")
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  availability_zone      = "us-east-1a"
  tags = {
    Name = "Web1"
  }
}
resource "aws_instance" "server2" {
  ami                    = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type          = "t2.micro"
  user_data              = file("setup.sh")
  subnet_id              = aws_subnet.private2.id
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  availability_zone      = "us-east-1b"
  tags = {
    Name = "Web2"
  }

}