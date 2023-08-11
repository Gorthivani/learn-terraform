data "aws_ami_ids" "ami"{
  name_regex = "centos-*"
  owners = ["194160465942"]
}
output "ami" {
  value = data.aws_ami_ids.ami
}
