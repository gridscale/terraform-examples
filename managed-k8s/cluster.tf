terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.8.0"
    }
  }
}

resource "gridscale_paas" "cluster" {
  name                  = "mycluster"
  service_template_uuid = "22e93afb-6b9d-4524-98a4-6580169f76b1" # Kubernetes (Gen 1) 1.19.4-gs1
  timeouts {
    create = "20m"
  }
}
