variable "region" {
  description = "The location or cloud resources region for the environment"
  type        = string
  default     = "us-west1"
}

variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "product_base_name" {
  description = "Cloud resources base name (used to create services)"
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
  default     = "dev"
}

variable "project_number" {
  description = "The numeric identifier of the GCP project"
  type        = string
}

variable "sqluser_name" {
  description = "Username for SQL server"
  type        = string
  sensitive   = true
}

variable "sqluser_password" {
  description = "User password for SQL Server"
  type        = string
  sensitive   = true
}

variable "sa_key" {
  description = "Names of secrets where service accounts keys are stored"
  type        = map(any)
  default = {
    raw_serverless = ""
    raw_spark      = ""
    dp_serverless  = ""
    dp_spark       = ""
  }
}
