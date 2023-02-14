resource "google_storage_bucket" "name" {
  name          = "xisart-bucket-tf"
  location      = "US-EAST1"
  force_destroy = true
}
