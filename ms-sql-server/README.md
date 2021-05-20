# MS SQL Server Example

This example shows how you can manage a MS SQL server with Terraform using the `"gridscale_sqlserver"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision a MS SQL server with backup-to-object-storage feature.

whereas the gridscale object storage access key can be created via `"gridscale_object_storage_accesskey"` resource.

**Note**: a bucket must be created in your gridscale object storage before enabling backup-to-object-storage feature of a MS SQL server.