resource "google_service_account_iam_member" "iac_automation_permissions" {
  service_account_id = google_service_account.iac_automation.id
  role               = "roles/iam.serviceAccountUser"
  member             = "serviceAccount:${google_service_account.iac_automation.email}"
}

resource "google_service_account_iam_member" "iac_automation_permissions_workload_identity" {
  service_account_id = google_service_account.iac_automation.id
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${google_service_account.iac_automation.email}"
}

resource "google_service_account_iam_member" "iac_automation_permissions_service_account_token_creator" {
  service_account_id = google_service_account.iac_automation.id
  role               = "roles/iam.serviceAccountTokenCreator"
  member             = "serviceAccount:${google_service_account.iac_automation.email}"
}

