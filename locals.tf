locals {
  name_prefix = "${var.env}-${component}"
  tags = merge(var.tags, {tf-module-name = "docdb"}, {env = var.env})
}