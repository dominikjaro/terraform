module "enabler" {
  source             = "../../modules/enabler"
  enabler_project_id = var.enabler_project_id
  enabler_region     = var.enabler_region

}
