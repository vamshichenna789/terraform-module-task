provider "google" {
  project = "devops-practice-411411"
  region  = "us-central1"
  scopes      = ["https://www.googleapis.com/auth/compute"]
  

}
terraform {
 backend "gcs" {
   bucket  = "terraform-backend-fisclouds"
   prefix  = "terraform/"
 }
}

