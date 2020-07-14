resource "google_compute_instance" "master-01" {
 name         = var.instance1
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = var.hostname1

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip1
   access_config {}
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "master-02" {
 name         = var.instance2
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = var.hostname2

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip2
   access_config {}
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-01" {
 name         = var.instance3
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = var.hostname3

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip3
   access_config {}
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-02" {
 name         = var.instance4
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = var.hostname4

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip4
   access_config {}
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-03" {
 name         = var.instance5
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = var.hostname5

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip5
   access_config {}
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}