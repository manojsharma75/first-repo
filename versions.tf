terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  # Configure GCS for Remote State Backend
  backend "gcs" {
    bucket = "your-terraform-state-bucket" # Replace with your actual GCS bucket name
    prefix = "gke-cluster/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
