locals {
  name = "${var.tags["Environment"]}-amicopy"
}

locals {
  tags = "${merge(
    var.tags,
    map(
      "Module", "amicopy",
      "Name", "${local.name}"
    )
  )}"
}
