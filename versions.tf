terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials-file)

  project = var.project
  region  = var.region
  zone    = local.zone
}

locals {
  zone = "${var.region}-a"
}
