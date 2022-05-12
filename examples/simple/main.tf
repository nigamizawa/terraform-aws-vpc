provider "aws" {
  region = var.region
}


module "vpc" {
  source = "../"

  cidr_block = "10.0.0.0/16"
  name       = "example-vpc"
}
