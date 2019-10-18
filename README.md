INF-tf-amicopy
===========

Terraform module to clone official AMIs to ensure reproducible builds.


This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

Module Input Variables
----------------------

#### Required
- `name` - Regular expression that matches the AMI to copy

#### Optional
None

Usage
-----

To copy the generic `Amazon Linux` image:
```hcl

module "amazon_linux" {
  name   = "amzn2-ami-hvm-*-x86_64-gp2"
  tags   = "${local.common_tags}"
  source = "git@github.com:ryte/INF-tf-amicopy.git?ref=v0.1.0"
}
```
or the ecs optimized version

```hcl

module "ecs_optimized" {
  name   = "amzn-ami-*.f-amazon-ecs-optimized"
  tags   = "${local.common_tags}"
  source = "git@github.com:ryte/INF-tf-amicopy.git?ref=v0.1.0"
}
```

Outputs
=======
`id` - *(String)* id of the new AMI

Authors
=======

- [Armin Grodon](https://github.com/x4121)
- [Markus Schmid](https://github.com/h0raz)

Changelog
=========
- 0.1.0 - Initial release.

License
=======

This software is released under the MIT License (see `LICENSE`).
