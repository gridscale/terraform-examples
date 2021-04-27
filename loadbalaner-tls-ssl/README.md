# Loadbalancer with TLS/SSL certificates Example

This example shows how you can manage a loadbalancer with Terraform using the `"gridscale_loadbalancer"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision a loadbalancer with:

- A TLS/SSL certificate.

whereas the TLS/SSL certificate can be created via `"gridscale_ssl_certificate"` resource.