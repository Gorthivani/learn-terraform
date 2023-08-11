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