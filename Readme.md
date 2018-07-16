INF-tf-datadog
===========

Terraform module for cloning the current aws AMI
every EC2 machine is built on top of that ami, so every machine has the same base image



This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/onpage-org/teams/inf).

Module Input Variables
----------------------

#### Required
- `name` - the ami name to copy, special characters like "*" are allowed
- `tags` - a map of key-value pairs which are used as tags for all ressources within the module (and allow tags)

#### Optional
None

Usage
-----

```hcl
module "ecs_optimized" {
  name   = "amzn-ami-*.f-amazon-ecs-optimized"
  tags   = "${local.common_tags}"
  source = "git@github.com:onpage-org/INF-tf-amicopy.git?ref=v0.1.0"
}
```

Outputs
=======
- `id` - the ami id, from the ami which is created within the account and the current region

Authors
=======

[Armin Grodon](https://github.com/x4121)
[Markus Schmid](https://github.com/h0raz)

Changelog
=========
0.1.0 - Initial release.

License
=======

This software is released under the MIT License (see `LICENSE`).