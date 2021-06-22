# Redis Example

This example shows how you can manage a Redis store/cache with Terraform using the `"gridscale_redis_store"` and `"gridscale_redis_cache"` resources.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision 2 Redis resources:
- The first one is a Redis store resource.
- The second one is a Redis cache resource.
