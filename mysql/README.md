# MySQL Example

This example shows how you can manage a MySQL with Terraform using the `"gridscale_mysql"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision 2 MySQL resources:
- The first one is a simple MySQL resource without any MySQL parameters.
- The second one is a MySQL resourece with some MySQL parameters.
