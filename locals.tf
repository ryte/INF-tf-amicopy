locals {
  name = "${var.tags["Environment"]}-amicopy"
}

locals {
  tags = merge(
    var.tags,
    {
      "Module" = "amicopy"
      "Name"   = local.name
    },
  )
}

