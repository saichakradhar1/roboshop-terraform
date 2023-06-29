data "aws_ami" "centos" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

output "ami"{
  value = data.aws_ami.centos.image_id
}


resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "frontend"
  }
}

output "frontend"{
  value = aws_instance.frontend.public_ip
}

resource "aws_instance" "Mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Mongodb"
  }
}

resource "aws_instance" "Catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "Redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Redis"
  }
}

resource "aws_instance" "User" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "User"
  }
}

resource "aws_instance" "Cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Cart"
  }
}

resource "aws_instance" "Mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Mysql"
  }
}

resource "aws_instance" "Shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Shipping"
  }
}

resource "aws_instance" "Rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "Dispatch" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"

  tags = {
    Name = "Dispatch"
  }
}