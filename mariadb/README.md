# MariaDB Example

This example shows how you can manage a MariaDB with Terraform using the `"gridscale_mariadb"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision 2 MariaDB resources:
- The first one is a simple MariaDB resource without any MariaDB parameters.
- The second one is a MariaDB resourece with some MariaDB parameters.
