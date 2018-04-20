locals {
  tags = {
    CID         = "${var.cid}"
    Environment = "${var.environment}"
    Module      = "amicopy"
    Name        = "${var.name}"
    Owner       = "${var.owner}"
    Project     = "${var.project}"
  }
}
