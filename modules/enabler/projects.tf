resource "google_project" "enabler_project" {
  project_id      = var.enabler_project_id
  name            = "org-enabler"
  billing_account = var.billing_account_id
}

resource "google_project" "cloudbuild_project" {
  project_id = var.cloudbuild_project_id
  name       = "org-cloudbuild"
}

resource "google_project" "dominikjaro_prod_project" {
  project_id = var.dominikjaro_prod_project_id
  name       = "dominikjaro-prod"
}

resource "google_project" "dominikjaro_dev_project" {
  project_id = var.dominikjaro_dev_project_id
  name       = "dominikjaro-dev"
}
