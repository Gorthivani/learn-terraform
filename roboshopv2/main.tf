variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security_groups" {
  default = [ "sg-0ee67709785a4f0d8" ]
}
variable "instance_type" {
  default = "t3.small"
}
variable "zone_id" {
  default = "Z0793902KESAK1KN209H"
}
variable "components" {
  default ={
    frontend = {name="frontend_dev"}
    mongodb = {name= "mongodb-dev"}
    catalogue = {name= "catalogue-dev"}
    user = {name= "user-dev"}
    redis = {name= "redis-dev"}
    cart = {name= "cart-dev"}
    mysql = {name= "mysql-dev"}
    shipping = {name= "shipping-dev"}
    rabbitmq = {name= "rabbitmq-dev"}
    payment = {name= "payment-dev"}

  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value,"name" ,null )
  }
}
resource "aws_route53_record" "www" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value,"name" ,null )}.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key,null), "private_ip", null)]
}
output "instance" {
  value = aws_instance.instance
}

