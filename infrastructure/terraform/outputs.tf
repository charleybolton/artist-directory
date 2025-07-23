output "db_instance_endpoint" {
  description = "The connection endpoint for the RDS instance"
  value       = module.db.db_instance_endpoint
}

output "db_instance_port" {
  description = "The port for the RDS instance"
  value       = module.db.db_instance_port
}

output "db_instance_name" {
  description = "The name of the initial database"
  value       = module.db.db_instance_name
}

output "db_instance_username" {
  description = "The master username for the database"
  value       = module.db.db_instance_username
  sensitive   = true
}

output "db_instance_identifier" {
  description = "The unique identifier for the RDS instance"
  value       = module.db.db_instance_identifier
}

output "db_instance_status" {
  description = "The current status of the RDS instance"
  value       = module.db.db_instance_status
}