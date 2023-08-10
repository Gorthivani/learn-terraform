# plain variable

variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}
# list variables
variable "fruits" {
  default = [
    "apple",
    "banana"]
  // default = [apple,banana] // single line synatx
}

# map variable plain
variable "fruit_stock" {
  default = {
    apple=100,
    banana=200
  }
}
#map variables map of maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100,
      price = 3
    }
      banana ={
        stock= 400,
        price= 1
      }
  }
  }


#access list variable ,list index starts from zero
output "fruits_first" {
  value = var.fruits[0]
}
output "fruits_name" {
  value = var.fruits[1]
}
#access map variable ,list index starts from zero
output "fruit_stock" {
  value = var.fruit_stock["apple"]
}
output "fruit_stock_with_price_of_apple" {
  value = var.fruit_stock_with_price["apple"].stock
}

#  variable datatypes
variable "fruit_details" {
  default = {
    apple= {
      stock= 100 // number
      type= "washington" // string
      for_sale=true // boolean
    }

  }
}
# variable in a combination  any other strings then it needs to be dollar parenthis ${}
output "fruit_name_1" {
  value = " fruit name =${var.fruit_name}"
}
output "fruit_details_apple" {
  value = "Apple stock=  ${var.fruit_details["apple"].stock} , Apple type=${var.fruit_details["apple"].type}, apple sale status =${var.fruit_details["apple"].for_sale}"
}