terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.9.0"
    }
  }
}

resource "gridscale_postgresql" "my_postgres_cluster" {
  name = "test"

  # The PostgreSQL release of this instance. For convenience, please use gscloud
  # (https://github.com/gridscale/gscloud) to get the list of available
  # PostgreSQL releases.
  release = "12"

  # Performance class of the PaaS service. Available performance classes at
  # the time of writing are `standard`, `high`, `insane`, `ultra`.
  performance_class = "insane"

  # Maximum CPU core count. The PostgreSQL instance's CPU core count will be
  # autoscaled based on the workload. The number of cores stays between 1 and
  # `max_core_count`.
  max_core_count = 20
}
