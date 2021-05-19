terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.10.0"
    }
  }
}

resource "gridscale_object_storage_accesskey" "my-backup" {
}

# Assume that a bucket named "backup" is created.

resource "gridscale_mssql" "my-mssql" {
	name = "my MS SQL server"
    # The PostgreSQL release of this instance. For convenience, please use gscloud
    # (https://github.com/gridscale/gscloud) to get the list of available
    # MS SQL server releases.
	release = "2019"
    # Performance class of the MS SQL service. Available performance classes at
    # the time of writing are `standard`, `high`, `insane`, `ultra`.
	performance_class = "standard"
	s3_backup {
        backup_bucket = "backup"
        backup_access_key = gridscale_object_storage_accesskey.my-backup.access_key
        backup_secret_key = gridscale_object_storage_accesskey.my-backup.secret_key
        backup_server_url = "https://gos3.io"
    }
}