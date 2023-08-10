resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "frontend-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "mongodb-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "catalogue-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "cart-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "redis-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "user-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "mysql-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "shipping-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "rabbitmq-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "www" {
  zone_id = "Z0793902KESAK1KN209H"
  name    = "payment-dev.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}