locals {
  name = "${var.environment}-amicopy"
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
