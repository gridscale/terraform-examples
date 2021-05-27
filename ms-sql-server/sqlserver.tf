terraform {
  required_providers {
    gridscale = {
      source  = "gridscale/gridscale"
      version = "~> 1.10.0"
    }
  }
}

# Assume that a bucket named "backup" is created. Following creates an access
# key for this.
resource "gridscale_object_storage_accesskey" "my-backup" {
}


resource "gridscale_sqlserver" "myserver" {
	name = "myserver"
  # The Microsoft SQL Server release of this instance. There is only one release
  # available now: 2019.
	release = "2019"

  # Performance class of the MS SQL service. Available performance classes are
  # `standard`, `high`, `insane`, `ultra`. The performance_class also determines
  # how many cores and memory the instance will get.
	performance_class = "standard"

  # This allows to easily connect your object storage with your new MS SQL
  # Server instance. With this you can write your backups to that bucket.
	s3_backup {
        backup_bucket = "backup"
        backup_access_key = gridscale_object_storage_accesskey.my-backup.access_key
        backup_secret_key = gridscale_object_storage_accesskey.my-backup.secret_key
        backup_server_url = "https://gos3.io"
    }
}
