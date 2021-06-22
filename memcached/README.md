# Memcached Example

This example shows how you can manage a Memcached with Terraform using the `"gridscale_memcached"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision 2 Memcached resources:
- The first one is a simple Memcached resource without additional parameters.
- The second one is a Memcached resource with `max_core_count`.
