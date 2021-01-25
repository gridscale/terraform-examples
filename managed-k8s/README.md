# Kubernetes Example

This example shows how you can spin up a Kubernetes cluster with Terraform using the `"gridscale_paas"` resource.

Before you run Terraform, you need to set the `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to their appropriate values. Take a look at the `.envrc` file for all variables.

## Example

In this example we will provision a cluster with:

- three worker nodes (max.)

whereas each worker node has

- 2 cores
- 4 GB of RAM
- and 30 GB of storage

Provisioning time varies of course but we can expect to take around 10 minutes to spin up the cluster.

## TODO

Missing:

- Show how to retrieve kubeconfig
- Run through a minimum hello world example:
  - create a deployment
  - create a service
- destroy everything
