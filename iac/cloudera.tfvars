credentials = "../../credentials.json"
project = "organic-boulder-284215"
network = "default"
master1_machine_type = "n1-standard-4"
master2_machine_type = "n1-standard-1"
workers_machine_type = "n1-standard-2"
image = "centos-cloud/centos-7"
instance1 = "master-01"
instance2 = "master-02"
instance3 = "worker-01"
instance4 = "worker-02"
instance5 = "worker-03"
hostname1 = "master-01.srv"
hostname2 = "master-02.srv"
hostname3 = "worker-01.srv"
hostname4 = "worker-02.srv" 
hostname5 = "worker-03.srv"
region = "us-east4"
zone1 = "us-east4-a"
zone2 = "us-east4-a"
zone3 = "us-west1-a"
zone4 = "us-west1-a"
zone5 = "us-west1-a"
masters_disk_size = "100"
workers_disk_size = "100"
ip1 = "10.150.0.20"
ip2 = "10.150.0.21"
ip3 = "10.138.0.22"
ip4 = "10.138.0.23"
ip5 = "10.138.0.24"
ssh_key = "~/.ssh/silveira.pub"
private_key = "~/.ssh/silveira"
user = "silveira"
cluster_name = "silveira"
tmp_dir = "/tmp"
bastion_ip = "35.202.158.218"
bastion_user = "silveira"
bastion_private_key = "~/.ssh/silveira"
ansible_private_key = "/tmp/silveira"
ansible_home = "/home/silveira/cloudera-terraform-gcp/ansible"
playbook = "cloudera-cdh-sdc.yml"
cm_version="7.2.4"
cdh_version="7.1.4"
cdh_parcels_version="7.1.4-1.cdh7.1.4.p0.6300266"
