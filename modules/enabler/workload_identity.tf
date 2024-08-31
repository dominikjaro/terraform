resource "google_iam_workload_identity_pool" "org_workload_identity_pool" {
  workload_identity_pool_id = "org-enabler-workload-id-pool"
  project                   = var.enabler_project_id
  display_name              = "org-workload-id-pool"
  description               = "Workload Identity Pool for the organization"
}

# resource "google_iam_workload_identity_pool_provider" "provider" {
#   project = var.enabler_project_id

#   workload_identity_pool_id = google_iam_workload_identity_pool.pool.workload_identity_pool_id

#   workload_identity_pool_provider_id = var.provider_id
#   display_name                       = var.provider_display_name
#   description                        = var.provider_description
#   disabled                           = var.provider_disabled
#   attribute_mapping                  = var.attribute_mapping
#   attribute_condition                = var.attribute_condition
#   oidc {
#     issuer_uri = var.issuer_uri
#   }

#   depends_on = [google_iam_workload_identity_pool.pool]
# }
