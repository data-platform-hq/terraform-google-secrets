locals {
  prefix = length(var.prefix) == 0 ? "" : "${var.prefix}-"
  env    = length(var.env) == 0 ? "" : "${var.env}-"
  suffix = length(var.suffix) == 0 ? "" : "-${var.suffix}"

  secrets = { for secret, value in var.secrets_input : ("${local.prefix}${local.env}${secret}${local.suffix}") => value }
}

resource "google_secret_manager_secret" "this" {
  for_each  = local.secrets
  secret_id = each.key
  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  expire_time = var.expire_time
  rotation {
    next_rotation_time = var.next_rotation_time
    rotation_period    = var.rotation_period
  }
  topics {
    name = var.topics_name
  }

  labels = var.labels
}

resource "google_secret_manager_secret_version" "this" {
  for_each    = local.secrets
  secret      = google_secret_manager_secret.this[each.key].id
  secret_data = each.value
}
