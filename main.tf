provider "google" {
  credentials = var.priv_cred
  #file("terraform-cred.json")
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "base-instance" {
  name         = var.base-instance
  machine_type = var.machine_cat

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  metadata_startup_script = var.start_script
  #file("startup.sh")

  network_interface {
    network = "default"
    access_config {

    }
  }
}