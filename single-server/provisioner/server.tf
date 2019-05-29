provider "gridscale" {
}

resource "gridscale_server" "server" {
  name = "demo-complete-provisioner"
  cores = 1
  memory = 2
  power = true
  ipv4 = gridscale_ipv4.ip.id

  storage {
    bootdevice = true
    object_uuid = gridscale_storage.storage.id
  }
}

resource "gridscale_storage" "storage" {
  name = "demo-complete-provisioner-storage"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.centos.id
    hostname = "demo-complete-provisioner"
    sshkeys = [ gridscale_sshkey.ssh_key.id ]
  }
}

resource "local_file" "ansible_inventory" {
  content = "${gridscale_server.server.name} ansible_host=${gridscale_ipv4.ip.ip}"
  filename = "hosts"
}

resource "null_resource" "storage_provisioner" {
  
  triggers = {
    storage_id = gridscale_storage.storage.id
  }

  provisioner "remote-exec" {
    inline = [ "echo ${gridscale_server.server.id}" ]
    connection {
      user = "root"
      port = 22
      host = gridscale_ipv4.ip.ip
      timeout = "2m"
    }
  }
 
  provisioner "local-exec" {
    command = "ansible-playbook -i hosts main.yml"
  }
}

data "gridscale_template" "centos" {
  name = "CentOS 7 (x86_64)"
}

resource "gridscale_sshkey" "ssh_key" {
  name = "demo-complete-proisioner-sshkey"
  sshkey = "INSERT KEY"
}

resource "gridscale_ipv4" "ip" {
  name = "demo-complete-provisioner-ip"
}

output "server_ip" {
  value = gridscale_ipv4.ip.ip
}
