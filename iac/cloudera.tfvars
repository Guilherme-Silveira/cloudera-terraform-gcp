credentials = "../../credentials.json"
project = "inlaid-lane-270316"
network = "default"
masters_machine_type = "n1-standard-4"
workers_machine_type = "n1-standard-4"
image = "centos-cloud/centos-7"
instance1 = "master-01"
instance2 = "master-02"
instance3 = "worker-01"
instance4 = "worker-02"
instance5 = "worker-03"
hostname1 = "master-01.internal"
hostname2 = "master-02.internal"
hostname3 = "worker-01.internal"
hostname4 = "worker-02.internal" 
hostname5 = "worker-03.internal"
region = "us-east4"
zone1 = "us-east4-a"
zone2 = "us-east4-a"
zone3 = "us-east4-a"
zone4 = "us-east4-a"
zone5 = "us-east4-a"
masters_disk_size = "100"
workers_disk_size = "100"
ip1 = "10.150.0.10"
ip2 = "10.150.0.11"
ip3 = "10.150.0.12"
ip4 = "10.150.0.13"
ip5 = "10.150.0.14"
ssh_key = "~/.ssh/silveira.pub"
private_key = "~/.ssh/silveira"
user = "silveira"
bastion_user = "silveira"
bastion_ip = "35.224.143.213"
playbook = "cloudera.yml"
