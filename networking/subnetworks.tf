resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.bastion_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "gke-cluster" {
  name = var.gke_name
  ip_cidr_range = var.gke_network_cidr
  region = var.gke_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "gke-a-pool" {
  name = var.gke_a_pool_name
  ip_cidr_range = var.gke_a_pool_network_cidr
  region = var.gke_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}