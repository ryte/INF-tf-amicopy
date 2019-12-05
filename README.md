# INF-tf-amicopy

Terraform module for cloning the current aws AMI
every EC2 machine is built on top of that ami, so every machine has the same base image


This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

## Module Input Variables

-  `name`
    -  __description__: the ami name to copy, special characters like "*" are allowed
    -  __type__: `string`
-  `tags`
    -  __description__: a map of key-value pairs which are used as tags for all ressources within the module (and allow tags)
    -  __type__: `map`
    -  __default__: {}

## Usage

To copy the generic `Amazon Linux` image:
```hcl

module "amazon_linux" {
  name   = "amzn2-ami-hvm-*-x86_64-gp2"
  tags   = local.common_tags
  source = "github.com/ryte/INF-tf-amicopy.git?ref=v0.1.0"
}
```
or the ecs optimized version

```hcl

module "ecs_optimized" {
  name   = "amzn-ami-*.f-amazon-ecs-optimized"
  tags   = local.common_tags
  source = "github.com/ryte/INF-tf-amicopy.git?ref=v0.1.0"
}
```

## Outputs

-  `id`
    -  __description__: the ami id, from the ami which is created within the account and the current region
    -  __type__: `string`

## Authors


- [Armin Grodon](https://github.com/x4121)
- [Markus Schmid](https://github.com/h0raz)

## Changelog

- 0.2.0 - Upgrade to terraform 0.12.x
- 0.1.0 - Initial release.

## License


This software is released under the MIT License (see `LICENSE`).
