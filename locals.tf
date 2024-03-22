locals {
  tags    = merge(var.tags, { tf-module-name = "docdb" }, { env = var.env })
  name_prefix = "${var.env}-docdb"
}