terraform {
  backend "s3" {
    bucket = "tf-state-robo"
    key    = "09-state/terraform-tfstate"
    region = "us-east-1"
  }
}
variable "test" {
  default = "hello"
}
output "test" {
  value = var.test
}
