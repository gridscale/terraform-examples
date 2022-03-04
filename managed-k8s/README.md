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

## Retrieve kubeconfig

Inside the cluster.tf you can see a defined output. the configured `value` needs
to match the `gridscale_k8s` resource. In the given example, our `gridscale_k8s`
resource is named `mycluster`:

```hcl
resource "gridscale_k8s" "mycluster" {
  # ...
}
```

So the configured value of our terraform `output` needs to look like this:

```hcl
output "kubeconfig" {
  value = gridscale_k8s.mycluster.kubeconfig
}
```

When you create your cluster terraform will write the kubeconfig now to stdout,
if you need to get the kubeconfig _after_ you've deployed your cluster, you can
do so by calling:

```bash
terraform output kubeconfig
```

## TODO

Missing:

- Run through a minimum hello world example:
  - create a deployment
  - create a service
- destroy everything
