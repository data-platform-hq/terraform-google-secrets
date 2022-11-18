resource "google_secret_manager_secret" "sa_key" {
  for_each  = var.sa_key
  secret_id = replace("${var.env}-${var.product_base_name}-${each.key}-sa-key", "_", "-")

  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  labels = {
    "iacda-gcp-pbn" = var.product_base_name
    "iacda-gcp-env" = var.env
    "iacda-gcp-res" = "secret"
  }
}

resource "google_secret_manager_secret_version" "sa_key" {
  for_each    = var.sa_key
  secret      = google_secret_manager_secret.sa_key[each.key].id
  secret_data = base64decode(each.value)
}


resource "null_resource" "sa_keys" {
  for_each = var.sa_key
  triggers = {
    secret = trimprefix(google_secret_manager_secret.sa_key[each.key].name, "projects/${var.project_number}/secrets/")
  }
}

resource "random_string" "sqlroot_passwd" {
  length = 16
}

resource "random_string" "sqluser_name" {
  length  = 10
  special = false
  numeric = false
}

resource "random_string" "sqluser_passwd" {
  length = 16
}


## SQL rootuser password section
resource "google_secret_manager_secret" "sqlroot_passwd" {
  secret_id = "${var.env}-${var.product_base_name}-root-passwd"

  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  labels = {
    "iacda-gcp-pbn" = var.product_base_name
    "iacda-gcp-env" = var.env
    "iacda-gcp-res" = "secret"
  }
}

resource "google_secret_manager_secret_version" "sqlroot_passwd_value" {
  secret = google_secret_manager_secret.sqlroot_passwd.id

  secret_data = random_string.sqlroot_passwd.result
}


## SQL user name section
resource "google_secret_manager_secret" "sqluser_name" {
  secret_id = "${var.env}-${var.product_base_name}-sqluser-name"

  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  labels = {
    "iacda-gcp-pbn" = var.product_base_name
    "iacda-gcp-env" = var.env
    "iacda-gcp-res" = "secret"
  }
}

resource "google_secret_manager_secret_version" "sqluser_name_value" {
  secret = google_secret_manager_secret.sqluser_name.id

  secret_data = random_string.sqluser_name.result
}


## SQL user password section
resource "google_secret_manager_secret" "sqluser_passwd" {
  secret_id = "${var.env}-${var.product_base_name}-sqluser-passwd"

  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
  labels = {
    "iacda-gcp-pbn" = var.product_base_name
    "iacda-gcp-env" = var.env
    "iacda-gcp-res" = "secret"
  }
}

resource "google_secret_manager_secret_version" "sqluser_passwd_value" {
  secret = google_secret_manager_secret.sqluser_passwd.id

  secret_data = random_string.sqluser_passwd.result
}
