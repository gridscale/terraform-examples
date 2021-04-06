terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.9.0"
    }
  }
}

resource "gridscale_postgresql" "terra-postgres-test" {
  name = "test"
  # The PostgreSQL release of this instance. For convenience, please use gscloud (https://github.com/gridscale/gscloud) to get the list of available postgreSQL service releases.
  release = "13"
  # Performance class of postgreSQL service. Available performance classes at the time of writing: `standard`, `high`, `insane`, `ultra`.
  performance_class = "standard"
  # Maximum CPU core count. The PostgreSQL instance's CPU core count will be autoscaled based on the workload. 
  # The number of cores stays between 1 and `max_core_count`.
  max_core_count = 20
}