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
  parameter {
    param = "k8s_worker_node_count"
    type  = "int"
    value = "3"
  }
  parameter {
    param = "k8s_worker_node_cores"
    type  = "int"
    value = "2"
  }
  parameter {
    param = "k8s_worker_node_ram"
    type  = "int"
    value = "4"
  }
  parameter {
    param = "k8s_worker_node_storage"
    type  = "int"
    value = "30"
  }
  parameter {
    param = "k8s_worker_node_storage_type"
    type  = "string"
    value = "storage"
  }
}
