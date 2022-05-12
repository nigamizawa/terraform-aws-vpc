# terraform-aws-vpc

## Examples

```

module "vpc" {
  source = "nigamizawa/terraform-aws-vpc"

  cidr_block = "10.0.0.0/16"
  name       = "example-vpc"
}
```
