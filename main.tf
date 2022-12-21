resource "google_secret_manager_secret" "creds" {
  for_each  = var.secrets_input
  secret_id = replace("${var.env}-${var.product_base_name}-${each.key}-secret", "-", "_")
  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  labels = var.labels
}

resource "google_secret_manager_secret_version" "creds_value" {
  for_each    = var.secrets_input
  secret      = google_secret_manager_secret.creds[each.key].id
  secret_data = each.value
}
