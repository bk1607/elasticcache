resource "aws_elasticache_cluster" "example" {
  cluster_id           = "${var.env}-{var.cluster_name}"
  engine               = var.engine
  node_type            = var.node_type
  num_cache_nodes      = var.cache_nodes
  parameter_group_name = var.parameter_group
  engine_version       = var.engine_version
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.test.name
}



resource "aws_elasticache_subnet_group" "test" {
  name       = "${var.env}-${var.subnet_group}"
  subnet_ids = var.db_subnet_ids
  tags = {
    Name = "My redis subnet group"
  }
}