terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.11.0"
    }
  }
}

resource "gridscale_redis_store" "terra-redis-store-test" {
  name = "my redis store"
  release = "5.0"
  performance_class = "insane"
}

resource "gridscale_redis_cache" "terra-redis-cache-test" {
  name = "my redis cache"
  release = "5.0"
  performance_class = "insane"
}