terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.9.0"
    }
  }
}

resource "gridscale_k8s" "mycluster" {
  name = "mycluster"

  # Define the desired Kubernetes release. Define which release of GSK will be
  # used for the cluster. For convenience, please use gscloud to get the list of
  # available Kubernetes releases.
  release = "1.21"

  node_pool {
    name         = "my_node_pool"
    node_count   = 2
    cores        = 1
    memory       = 2
    storage      = 30
    storage_type = "storage_insane"
  }
}

output "kubeconfig" {
  value = gridscale_k8s.mycluster.kubeconfig
}
