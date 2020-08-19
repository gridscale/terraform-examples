# A Simple Server

This is a simple example that show how to use resources and data sources to create a basic running server.

## Running the Example

Set `GRIDSCALE_TOKEN` and `GRIDSCALE_UUID` environment variables to the values you got from your panel.

    $ export GRIDSCALE_TOKEN=your-api-token
    $ export GRIDSCALE_UUID=your-user-id

Open `server.tf` and paste your SSH public key where it says `"INSERT KEY"`. Then do

    $ terraform init

Note that this will download the gridscale provider plugin to `.terraform/`.

Let's create the server. Do

    $ terraform apply

Terraform will now plan the actions it is about to perform. You should see something like:

```raw
Plan: 5 to add, 0 to change, 0 to destroy.
```

Investigate the actions that Terraform is about to perform and type `yes`. After about 30 seconds, Terraform will print

```raw
Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
```

Go ahead and inspect the panel for the newly created objects. When your done, remove all resources again by doing

    $ terraform destroy

After a few moments, everything is removed again.

```raw
Destroy complete! Resources: 5 destroyed.
```
