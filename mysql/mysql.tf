terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.11.0"
    }
  }
}

resource "gridscale_mysql" "my-mysql" {
    name = "my new mysql"
	release = "5.7"
	performance_class = "insane"
}

resource "gridscale_mysql" "mysql-with-params" {
	name = "my mysql with params"
	release = "10.5"
	performance_class = "insane"
	labels = ["test"]
	mysql_query_cache_limit = "2M"
	mysql_default_time_zone = "Europe/Berlin"
	mysql_server_id = 2
	mysql_binlog_format = "MIXED"
}