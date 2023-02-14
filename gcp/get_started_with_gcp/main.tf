terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}
provider "google" {
  project     = "tf-gcp-377016"
  region      = "us-west1"
  zone        = "us-west1-a"
  credentials = "keys.json"
}

resource "google_storage_bucket" "gcs1" {
  name          = "bucket-tf-xisart"
  location      = "US"
  force_destroy = true
}
