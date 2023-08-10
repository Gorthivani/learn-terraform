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
