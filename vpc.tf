resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = merge(
    local.tags,
    {
      "Name" = var.name
    },
  )
}

resource "aws_internet_gateway" "main" {
  count = var.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.main.id

  tags = merge(
    local.tags,
    {
      "Name" = "${var.name}-igw"
    },
  )
}

# If `aws_default_security_group` is not defined, it will be created implicitly with access `0.0.0.0/0`
resource "aws_default_security_group" "main" {
  count = var.enable_default_security_group ? 1 : 0

  vpc_id = aws_vpc.main.id
  tags   = merge(
    local.tags,
    { 
      Name = "Default Security Group" 
    }
  )
}
