# INF-tf-amicopy

Terraform module for cloning the current aws AMI
every EC2 machine is built on top of that ami, so every machine has the same base image


This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

The following requirements are needed by this module:

- terraform (>= 0.12)

## Providers

The following providers are used by this module:

- aws

## Required Inputs

The following input variables are required:

### environment

Description: the environment this ami is copied to (e.g. 'testing')

Type: `string`

### name

Description: the ami name to copy, special characters like '\*' are allowed

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### id

Description: the ami id, from the ami which is created within the account and the current region

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

To copy the generic `Amazon Linux` image:
```hcl

module "amazon_linux" {
  name        = "amzn2-ami-hvm-*-x86_64-gp2"
  tags        = local.common_tags
  environment = var.environment
  source      = "github.com/ryte/INF-tf-amicopy.git?ref=v0.2.1"
}
```
or the ecs optimized version

```hcl

module "ecs_optimized" {
  name        = "amzn-ami-*.f-amazon-ecs-optimized"
  tags        = local.common_tags
  environment = var.environment
  source      = "github.com/ryte/INF-tf-amicopy.git?ref=v0.2.1"
}
```

## Authors

- [Armin Grodon](https://github.com/x4121)
- [Markus Schmid](https://github.com/h0raz)

## Changelog

- 0.2.1 - Add variable `environment` instead of reading from tags
- 0.2.0 - Upgrade to terraform 0.12.x
- 0.1.0 - Initial release.

## License

This software is released under the MIT License (see `LICENSE`).
