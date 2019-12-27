provider "gridscale" {
}

resource "gridscale_server" "caching-server" {
  name   = "caching-server"
  cores  = 1
  memory = 2
  storage {
    bootdevice  = true
    object_uuid = gridscale_storage.caching-server.id
  }
  network {
    object_uuid = gridscale_network.webserver.id
  }
  ipv4  = gridscale_ipv4.caching-server.id
  power = true
}

resource "gridscale_storage" "caching-server" {
  name     = "caching-server"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.sshkey.id]
  }
}

resource "gridscale_network" "webserver" {
  name = "webserver"
}

resource "gridscale_ipv4" "caching-server" {
}

resource "gridscale_sshkey" "sshkey" {
  name   = "complete-sshkey"
  sshkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPYHDe/rzR6tb2y6TI1fnGRbpac9dAb8i1RP1tPS3ulG3BSR5VOSQGUvpy7VB71DH/VTBLWQz4Y4J+r5hDJbuNIvNd8jInCEWKgsqC9oFECBGPmOWEr44p+Hsje70sh6Nj34xYjdi6BBc2S+7/KpFzT0tybQTerGcAwztrESTa7iOsEazr6j+nJyhWXaWvHR1U3rC1cKM4QQWQCQHYhCmVGpdiYcFj3JKYjFXgArryZSz0EetWqw17vePD8BI0xawVIZO0f9RdqJ9eYh1vW/k1Gg30qpuVSADNZDMvgkfJnRD+SLjKJBYRdPx61fsmLm+6eL0NLXYVDmnTElpbRhhD wouter@gridscales-MacBook-Air.local"
}

data "gridscale_template" "ubuntu" {
  name = "Ubuntu 18.04 LTS"
}

