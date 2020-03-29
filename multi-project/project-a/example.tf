data "gridscale_public_network" "pubnet" {
}

resource "gridscale_storage" "foo" {
  name     = "foo"
  capacity = 10
  template {
    template_uuid = "dbb3e965-bfa0-411e-b324-86e82b3f36ec" # CentOS 7
    hostname      = "foo"
    password      = "secret"
  }
}

resource "gridscale_server" "foo" {
  name   = "foo"
  cores  = 1
  memory = 1
  storage {
    object_uuid = gridscale_storage.foo.id
  }
  network {
    object_uuid = data.gridscale_public_network.pubnet.id
  }
  power = true
}
