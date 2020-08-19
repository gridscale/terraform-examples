# Terraform Examples for gridscale

This repository contains small self-contained Terraform projects you can use as a starting point for using [Terraform](https://www.terraform.io/) with gridscale. It showcases how easy it is to manage gridscale resources with Terraform in simple as well as more advanced scenarios.

To make use of the examples, you will need a [gridscale.io](https://my.gridscale.io/signup/) account and an [API token](https://my.gridscale.io/Easy/APIs/).

## Examples

- [single-server](single-server/README.md): A simple example that shows how a complete server with attached storage, template selection, and networking can be described in Terraform.
- [provisioner](provisioner/README.md): Shows how to integrate Ansible with Terraform to provision your servers and assign them your Ansible roles.
- [multi-project](multi-project/README.md): Describes how you could get Terraform to work in a multi-project scenario.

## More

Check out the provider's [reference documentation](https://registry.terraform.io/providers/gridscale/gridscale/latest/docs) for all Data Sources and Resources, along with a complete list of the arguments they accept.

We also have an introductory-level guide on how to setup and use Terraform in our [tutorials](https://gridscale.io/en/community/tutorials/terraform-ubuntu-einrichten-gridscale/) section. Check it out.

Have fun!
