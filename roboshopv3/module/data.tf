data "aws_ami_ids" "ami"{
  most_recent =    "true"
  name_regex  =     "centos-*"
  owners      =         ["194160465942"]
}