terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.8.2"
    }
  }
}

resource "gridscale_server" "demo" {
  name   = "demo"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.demo.id
  }
  power = false
}

resource "gridscale_storage" "demo" {
  name     = "demo"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.demo.id]
  }
}

resource "gridscale_sshkey" "demo" {
  name   = "demo"
  sshkey = file("/home/john/.ssh/id_rsa.pub")
}

data "gridscale_template" "ubuntu" {
  name = "Ubuntu 18.04 LTS"
}
