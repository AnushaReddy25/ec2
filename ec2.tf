resource "aws_instance" "web" {
  ami           = "ami-0437df53acb2bbbfd"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.anukeyyy2751.name]
  key_name = aws_key_pair.key_pair.key_name

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "anukeyyy2751" {
  name        = "security group using anukeyyy2751"
  description = "security group using anukeyyy2751"
  vpc_id      = "vpc-046f6a9b4743f57f6"

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   }

    ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "RDP"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "anukeyyy2751"
  }
}
