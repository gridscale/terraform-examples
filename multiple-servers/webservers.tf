resource "gridscale_server" "webserver1" {
  name   = "webserver1"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.webserver1-storage.id
  }
  network {
    object_uuid = gridscale_network.webserver-network.id
  }
}

resource "gridscale_storage" "webserver1-storage" {
  name     = "websever1-storage"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.sshkey.id]
  }
}

resource "gridscale_server" "webserver2" {
  name   = "webserver2"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.webserver2-storage.id
  }
  network {
    object_uuid = gridscale_network.webserver-network.id
  }
}

resource "gridscale_storage" "webserver2-storage" {
  name     = "websever2-storage"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.sshkey.id]
  }
}

resource "gridscale_server" "webserver3" {
  name   = "webserver3"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.webserver3-storage.id
  }
  network {
    object_uuid = gridscale_network.webserver-network.id
  }
}

resource "gridscale_storage" "webserver3-storage" {
  name     = "websever3-storage"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.sshkey.id]
  }
}
