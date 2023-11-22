locals {
  name_prefix = "${var.env}-docdb"
  tags = merge(var.tags, {tf-module-name = "docdb"}, {env = var.env})
}