variable "components" {
  default = ["frontend", "mongodb"]
}
 resource "aws_instance" "instance" {
   count = length(var.components)
   ami           = "ami-03265a0778a880afb"
   instance_type = "t3.micro"
   vpc_security_group_ids = [ "sg-0ee67709785a4f0d8" ]

   tags = {
     Name = "frontend"
   }
 }