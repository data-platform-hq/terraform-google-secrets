output "raw_serverless_sa_secret" {
  value       = trimprefix(google_secret_manager_secret.sa_key["raw_serverless"].name, "projects/${var.project_number}/secrets/")
  description = "The name of secret where key for raw_serverless service account is stored"
}

output "raw_spark_secret" {
  value       = trimprefix(google_secret_manager_secret.sa_key["raw_spark"].name, "projects/${var.project_number}/secrets/")
  description = "The name of secret where key for raw_spark service account is stored"
}

output "dp_serverless_secret" {
  value       = trimprefix(google_secret_manager_secret.sa_key["dp_serverless"].name, "projects/${var.project_number}/secrets/")
  description = "The name of secret where key for dp_serverless service account is stored"
}

output "dp_spark_sa_secret" {
  value       = trimprefix(google_secret_manager_secret.sa_key["dp_spark"].name, "projects/${var.project_number}/secrets/")
  description = "The name of secret where key for dp_spark service account is stored"
}

## SQL rootuser password section
output "sqlroot_passwd_id" {
  value       = google_secret_manager_secret_version.sqlroot_passwd_value.id
  sensitive   = true
  description = "The value for SQL instance rootuser password"
}
output "sqlroot_passwd_data" {
  value       = google_secret_manager_secret_version.sqlroot_passwd_value.secret_data
  sensitive   = true
  description = "The value for SQL instance rootuser password"
}

## SQL username section
output "sqluser_name_id" {
  value       = google_secret_manager_secret_version.sqluser_name_value.name
  sensitive   = false
  description = "The id for SQL instance username id"
}

output "sqluser_name" {
  value       = random_string.sqluser_name.result
  sensitive   = true
  description = "The value for SQL instance username"
}
output "sqluser_name_data" {
  value       = google_secret_manager_secret_version.sqluser_name_value.secret_data
  sensitive   = true
  description = "The value for SQL instance username"
}

# SQL user password section
output "sqluser_passwd_id" {
  value       = google_secret_manager_secret_version.sqluser_passwd_value.id
  sensitive   = false
  description = "The value for SQL instance user password id"
}

output "sqluser_passwd_data" {
  value       = google_secret_manager_secret_version.sqluser_passwd_value.secret_data
  sensitive   = true
  description = "The id for SQL instance user password"
}
