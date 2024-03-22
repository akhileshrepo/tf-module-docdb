resource "aws_docdb_subnet_group" "default" {
  name       = "${local.name_prefix}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = merge(local.tags, {Name = "${local.name_prefix}-subnet-group"})
}

