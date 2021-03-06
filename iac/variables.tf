variable "credentials" {
 type = string
}

variable "project" {
 type = string
}

variable "network" {
 type = string
}

variable "master1_machine_type" {
 type = string
}

variable "master2_machine_type" {
 type = string
}

variable "workers_machine_type" {
 type = string
}

variable "image" {
 type = string
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

variable "hostname1" {
 type = string
}

variable "hostname2" {
 type = string
}

variable "hostname3" {
 type = string
}

variable "hostname4" {
 type = string
}

variable "hostname5" {
 type = string
}

variable "region" {
 type = string
}

variable "zone1" {
 type = string
}

variable "zone2" {
 type = string
}

variable "zone3" {
 type = string
}

variable "zone4" {
 type = string
}

variable "zone5" {
 type = string
}

variable "masters_disk_size" {
 type = string
}

variable "workers_disk_size" {
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

variable "user" {
 type = string
}

variable "bastion_user" {
 type = string
}

variable "bastion_private_key" {
 type = string
}

variable "ansible_private_key" {
 type = string
}

variable "cluster_name" {
 type = string
}

variable "tmp_dir" {
 type = string
}

variable "bastion_ip" {
 type = string
}

variable "private_key" {
 type = string
}

variable "playbook" {
 type = string
}

variable "ansible_home" {
 type = string
}

variable "cm_version" {
 type = string
 default = "0.0.0"
}

variable "cdh_version" {
 type = string
 default = "0.0.0"
}

variable "cdh_parcels_version" {
 type = string
 default = "0"
}
