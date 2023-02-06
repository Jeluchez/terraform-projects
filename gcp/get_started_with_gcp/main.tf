terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.47.0"
    }
  }
}
provider "google" {
  project = "tf-gcp-372516"
  region  = "us-west1"
  zone    = "us-west1-a"
}

resource "google_storage_bucket" "gcs1" {
  name          = "bucket-tf-up" #up = username and password
  location      = "US"
  force_destroy = true
}
