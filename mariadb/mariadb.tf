terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.10.0"
    }
  }
}

resource "gridscale_mariadb" "my-mariadb" {
    name = "my new mariadb"
	release = "10.5"
	performance_class = "insane"
}

resource "gridscale_mariadb" "mariadb-with-params" {
	name = "my mariadb with params"
	release = "10.5"
	performance_class = "insane"
	labels = ["test"]
	mariadb_query_cache_limit = "2M"
	mariadb_default_time_zone = "Europe/Berlin"
	mariadb_sql_mode = "NO_AUTO_CREATE_USER,ERROR_FOR_DIVISION_BY_ZERO"
	mariadb_server_id = 2
	mariadb_binlog_format = "STATEMENT"
}