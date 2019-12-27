# Provisioning on gridscale with Terraform and Ansible

This example provisions a web-server using Ansible and Terraform. It creates an inventory based on the server's IP address and name. In your Ansible playbooks, to reference the server use the server resource name, i.e., `demo-complete-provisioner` as show in `main.yml`.

In order to run the example fill in a public SSH key where it says `"INSERT KEY"` in the `gridscale_sshkey` resource.

## Details

This example uses a null resource in order to provision the storage with Ansible. This is needed only if the storage is for some reason recreated and you want Ansible to re-provision the storage automatically again. This is achieved using a trigger. The null resource also depends on the server resource implicitly. This is what the `echo ${gridscale_server.server.id}` is for so please don't remove it. It also leverages the `remote-exec` provisioners timeout and retry functionality to wait for SSH to be available for Ansible to work.

If you don't need the functionality of reprovisioning the storage on recreation, just define the provisioner inside the server resource and remove the null resource.

We are currently enhancing the gridscale Terraform provider in a way that makes the null resource obsolete and general usage of provisioners more straight forward.
