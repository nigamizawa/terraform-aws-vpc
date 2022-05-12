output "this" {
  value = {
    vpc = aws_vpc.main,
    internet_gateway = aws_internet_gateway.main,
    default_security_group = aws_default_security_group.main
  }
}

output "vpc" {
  value = aws_vpc.main
}

output "internet_gateway" {
  value = aws_internet_gateway.main
}

output "default_security_group" {
  value = aws_default_security_group.main
}
