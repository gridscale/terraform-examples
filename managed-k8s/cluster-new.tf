terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.9.0"
    }
  }
}

resource "gridscale_k8s" "k8s-test" {
  name   = "test"
  # K8s service release. Define which release of k8s service will be used to create the k8s cluster. For convenience, please use gscloud to get the list of available k8s release numbers.
  release = "1.18"
  node_pool {
  name = "my_node_pool"
    node_count = 2
    cores = 1
    memory = 2
    storage = 10
    storage_type = "storage_insane"
  }
 }