terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.42.0"
    }
  }
  required_version ">= 1.6.0"
}

provider "google" {
  region = "europe-west2"
}