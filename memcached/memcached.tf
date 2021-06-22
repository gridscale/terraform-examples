terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.11.0"
    }
  }
}

resource "gridscale_memcached" "terra-memcached-test" {
  name = "test"
  release = "1.5"
  performance_class = "insane"
}

resource "gridscale_memcached" "memcached-with-maxNCores" {
	name = "my memcached with maxNCores"
	release = "1.5"
	performance_class = "insane"
    max_core_count = 20
	labels = ["test"]
}