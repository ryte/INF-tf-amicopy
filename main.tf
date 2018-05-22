data "aws_region" "current" {}

data "aws_ami" "ami" {
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["${var.name}"]
  }

  most_recent = true
  owners      = ["amazon"]
}

resource "aws_ami_copy" "ami" {
  description       = "Local copy of ${data.aws_ami.ami.id}"
  encrypted         = true
  name              = "${data.aws_ami.ami.id}"
  source_ami_id     = "${data.aws_ami.ami.id}"
  source_ami_region = "${data.aws_region.current.id}"
  tags              = "${local.tags}"
}
