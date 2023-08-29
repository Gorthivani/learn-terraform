
# list variables
variable "fruits" {
  default = [
    "apple",
    "banana"]
}
output "fruit_name" {
  //using functions element
  value = element(var.fruits,2)
}

variable "fruit_stock" {
  default = {
    apple = 100
  }
}
output "fruit_stock" {
  //using functions element
  //value = var.fruit_stock["banana"]
  // in these banan is not therevif i acces to get error so by try atlreast we get 0
  value = try(var.fruit_stock["banana"],0)
}
output "fruit_stock_1" {
  value = lookup(var.fruit_stock["apple"],"price" ,2)
  // value = try(var.fruit_stock["banana"],0)
}
