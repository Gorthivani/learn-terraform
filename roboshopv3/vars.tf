variable "security_groups" {
  default = [ "sg-0ee67709785a4f0d8" ]
}

variable "zone_id" {
  default = "Z0793902KESAK1KN209H"
}




variable "components" {
 default={
     frontend = {
            name = "frontend"
             instance_type ="t3.micro"
     }

  }

}