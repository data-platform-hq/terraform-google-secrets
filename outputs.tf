output "sa_key_secret" {
  value       = { for k, v in var.sa_key : k => trimprefix(google_secret_manager_secret.sa_key[k].name, "projects/${var.project_number}/secrets/") }
  description = "The name of secret where key for service account is stored."
}

## SQL rootuser password section
output "sqlroot_passwd_secrets_value" {
  value       = google_secret_manager_secret_version.sqlroot_passwd_value.secret_data
  sensitive   = true
  description = "The value for SQL instance rootuser password."
}

## SQL username section
output "sqluser_name_secrets_id" {
  value       = google_secret_manager_secret_version.sqluser_name_value.id
  sensitive   = false
  description = "The id for SQL instance username secret."
}

output "sqluser_name_secrets_value" {
  value       = google_secret_manager_secret_version.sqluser_name_value.secret_data
  sensitive   = true
  description = "The value for SQL instance username secret."
}

# SQL user password section
output "sqluser_passwd_secrets_id" {
  value       = google_secret_manager_secret_version.sqluser_passwd_value.id
  sensitive   = false
  description = "The id for SQL instance user password secret."
}

output "sqluser_passwd_secrets_value" {
  value       = google_secret_manager_secret_version.sqluser_passwd_value.secret_data
  sensitive   = true
  description = "The value for SQL instance user password secret."
}
