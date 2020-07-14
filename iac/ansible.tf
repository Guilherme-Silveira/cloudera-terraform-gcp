resource "null_resource" "hosts" {
  triggers = {
   public_ip1  = google_compute_instance.master-01.network_interface.0.access_config.0.nat_ip
   public_ip2  = google_compute_instance.master-02.network_interface.0.access_config.0.nat_ip
   public_ip3  = google_compute_instance.data-01.network_interface.0.access_config.0.nat_ip
   public_ip4  = google_compute_instance.data-02.network_interface.0.access_config.0.nat_ip
   public_ip5  = google_compute_instance.data-03.network_interface.0.access_config.0.nat_ip
 }
  
  provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = google_compute_instance.master-01.network_interface.0.access_config.0.nat_ip
     private_key = file(var.private_key)
   }
   inline = [
     "echo OK"
   ]
 }

 provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = google_compute_instance.master-02.network_interface.0.access_config.0.nat_ip
     private_key = file(var.private_key)
   }
   inline = [
     "echo OK"
   ]
 }

 provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = google_compute_instance.data-01.network_interface.0.access_config.0.nat_ip
     private_key = file(var.private_key)
   }
   inline = [
     "echo OK"
   ]
 }

 provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = google_compute_instance.data-02.network_interface.0.access_config.0.nat_ip
     private_key = file(var.private_key)
   }
   inline = [
     "echo OK"
   ]
 }

 provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = google_compute_instance.data-03.network_interface.0.access_config.0.nat_ip
     private_key = file(var.private_key)
   }
   inline = [
     "echo OK"
   ]
 }

 provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "silveira"
     host = var.bastion_ip
     private_key = file(var.private_key)
   }
   inline = [
     "cd /home/silveira/cloudera-terraform-gcp/ansible",
     "ansible-playbook -i hosts ${var.playbook}",
   ]
 }
}