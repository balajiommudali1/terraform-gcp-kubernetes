resource "google_service_account" "service_account" {
  account_id = var.gke_name
  display_name = "Mateusz Adam Katana"
}