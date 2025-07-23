terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " >= 4.49.0"

    }
  }
  required_version = ">= 1.1.0"
}

module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = var.db_identifier

  engine            = "postgres"
  engine_version    = "14.18"
  family            = "postgres14"
  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage

  db_name  = var.db_name
  username = var.db_username
  port     = var.db_port

  maintenance_window = var.maintenance_window
  backup_window      = var.backup_window
}