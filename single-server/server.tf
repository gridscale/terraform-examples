terraform {
  required_providers {
    gridscale = {
      source = "gridscale/gridscale"
    }
  }
}

resource "gridscale_server" "demo" {
  name   = "demo"
  cores  = 1
  memory = 2
  storage {
    object_uuid = gridscale_storage.demo.id
  }
  network {
    object_uuid = gridscale_network.demo.id
  }
  ipv4  = gridscale_ipv4.demo.id
  power = true
}

resource "gridscale_storage" "demo" {
  name     = "demo"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.demo.id]
  }
}

resource "gridscale_network" "demo" {
  name = "demo"
}

resource "gridscale_ipv4" "demo" {
  name = "demo"
}

resource "gridscale_sshkey" "demo" {
  name   = "demo"
  sshkey = "INSERT KEY"
}

data "gridscale_template" "ubuntu" {
  name = "Ubuntu 18.04 LTS"
}
