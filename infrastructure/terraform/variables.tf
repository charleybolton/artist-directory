variable "db_identifier" {
  description = "The name of the RDS instance"
  type        = string
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "The DB name to create. If omitted, no database is created initially"
  type        = string
  default     = "artist_directory"
}

variable "db_username" {
  description = "Username for the master DB user"
  type        = string
}

variable "db_port" {
  description = "The port on which the DB accepts connections"
  type        = number
  default     = 5432
}

variable "maintenance_window" {
  description = "The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00'"
  type        = string
  default     = "Mon:00:00-Mon:03:00"
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  type        = string
  default     = "03:00-06:00"
}