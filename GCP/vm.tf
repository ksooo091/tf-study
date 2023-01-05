# resource "google_service_account" "default" {
#   account_id   = "service_account_id"
#   display_name = "Service Account"
# }

resource "google_compute_instance" "tf_test_vm" {
  name         = "tftestvm"
  machine_type = "e2-micro"
  zone         = "asia-northeast3-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20230104"

    }
  }

#   // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }



  metadata_startup_script = file("dockerinstall.sh")

}