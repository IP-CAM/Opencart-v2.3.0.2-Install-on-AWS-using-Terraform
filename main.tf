resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

#--------------- RDS outputs ---------------#

output "database_instance_endpoint" {
  value       = module.rds.this_db_instance_endpoint
  description = "Database instance endpoint"
}

#--------------- EKS outputs ---------------#

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "cluster_version" {
  value = module.eks.cluster_version
}

output "node_groups" {
  value = module.eks.node_groups
}
