resource "gridscale_server" "webserver1" {
  name   = "webserver1"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.webserver1.id
  }
  network {
    object_uuid = gridscale_network.webserver.id
  }
}

resource "gridscale_storage" "webserver1" {
  name     = "webserver1"
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
    object_uuid = gridscale_storage.webserver2.id
  }
  network {
    object_uuid = gridscale_network.webserver.id
  }
}

resource "gridscale_storage" "webserver2" {
  name     = "webserver2"
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
    object_uuid = gridscale_storage.webserver3.id
  }
  network {
    object_uuid = gridscale_network.webserver.id
  }
}

resource "gridscale_storage" "webserver3" {
  name     = "webserver3"
  capacity = 10
  template {
    template_uuid = data.gridscale_template.ubuntu.id
    sshkeys       = [gridscale_sshkey.sshkey.id]
  }
}

