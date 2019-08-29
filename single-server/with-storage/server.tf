provider "gridscale" {
}

resource "gridscale_server" "server" {
  name   = "demo-server"
  cores  = 1
  memory = 2
  storage {
    bootdevice  = true
    object_uuid = gridscale_storage.storage.id
  }
}

resource "gridscale_storage" "storage" {
  name     = "demo-storage"
  capacity = 11
}

