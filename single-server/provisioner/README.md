# Provisioning with Terraform and Ansible

This example provisions a web-server using Ansible and Terraform. It creates an Ansible inventory based on the server's IP address and name. In your Ansible playbooks, to reference the server use the server resource name. In this example, `demo-complete-provisioner` as show in `main.yml`.

Note: You need Ansible installed and in PATH to run this example.

## Running the Example

As usual, set `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to the values you retrieved from your panel.

    $ export GRIDSCALE_TOKEN=project-a-api-token
    $ export GRIDSCALE_UUID=your-user-id

Open `server.tf` and paste your SSH public key where it says `"INSERT KEY"`. Then do

    $ terraform init

And then do a

    $ terraform apply

Type `yes` when terraform asks you to. In the end you should see following output should be shown on your terminal:

```raw
…
null_resource.storage_provisioner: Creation complete after 19s [id=41077748293669291]

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

server_ip = 45.17.50.177
```

E voilà, you have a new server resource along with a running Apache web-server. Try it:

    $ curl -i http://45.17.50.177

## Details

This example uses a null resource in order to provision the storage with Ansible. This is needed only if the storage is for some reason re-created and you want Ansible to re-provision the storage automatically again. This is achieved using a trigger. The null resource also depends on the server resource implicitly. This is what the `echo ${gridscale_server.server.id}` is for (so please don't remove it). It also leverages the `remote-exec` provisioners timeout and retry functionality to wait for SSH to be available for Ansible to work.

If you don't need the functionality of reprovisioning the storage on when it is re-created, just define the provisioner inside the server resource and remove the null resource.

We are currently enhancing the gridscale Terraform provider in a way that makes the null resource obsolete and general usage of provisioners more straight forward.
