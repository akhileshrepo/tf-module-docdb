resource "aws_docdb_subnet_group" "default" {
  name       = "${local.name_prefix}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = merge(local.tags, {Name = "${local.name_prefix}-subnet-group"})
}

resource "aws_docdb_cluster" "main" {
  cluster_identifier      = "${local.name_prefix}-cluster"
  engine                  = "docdb"
  master_username         = "foo"
  master_password         = "mustbeeightchars"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}