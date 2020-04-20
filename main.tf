provider "google" {
 credentials = file("~/Documents/projetos/credentials.json")
 project     = "inlaid-lane-270316"
 region      = var.zone
}

variable "instance1" {
 type = string
}

variable "instance2" {
 type = string
}

variable "instance3" {
 type = string
}

variable "instance4" {
 type = string
}

variable "instance5" {
 type = string
}

variable "zone" {
 type = string
}

variable "disk_size" {
 type = string
}

variable "ip1" {
 type = string
}

variable "ip2" {
 type = string
}

variable "ip3" {
 type = string
}

variable "ip4" {
 type = string
}

variable "ip5" {
 type = string
}

variable "ssh_key" {
 type = string
}

resource "google_compute_instance" "master-01" {
 name         = var.instance1
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = "${var.instance1}.srv"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip1
   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "master-02" {
 name         = var.instance2
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = "${var.instance2}.srv"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip2
   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-01" {
 name         = var.instance3
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = "${var.instance3}.srv"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip3
   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-02" {
 name         = var.instance4
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = "${var.instance4}.srv"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip4
   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}

resource "google_compute_instance" "data-03" {
 name         = var.instance5
 machine_type = "n1-standard-4"
 zone         = "${var.zone}-a"
 hostname     = "${var.instance5}.srv"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
     size  = var.disk_size
   }
 }

 network_interface {
   network    = "default"
   network_ip = var.ip5
   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "silveira:${file("${var.ssh_key}")}"
 }
}
