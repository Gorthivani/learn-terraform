resource "aws_instance" "instance" {
  for_each = var.components
  ami           = data.aws_ami_ids.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value,"name" ,null )
  }
}
resource "aws_route53_record" "www" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${var.name}.gorthivani.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}
output "instance" {
  value = aws_instance.instance
}
variable "ami" {}
