# Provisioning on gridscale with terraform and ansible

This example provisions a webserver using ansible and terraform. It creates an inventory
based on the servers ip and name. In your ansible playbooks, to address the server use
the server resources name i.e. `demo-complete-provisioner` as show in `main.yml`.

# Details

This example uses a null resource in order to provision the storage with ansible. This
is needed only if the storage is for some reason recreated and you want ansible to
reprovision the storage automatically again. This is achieved using a trigger. The
null resource also depends on the server resource implicitly. This is what the
`echo ${gridscale_server.server.id}` is for so please don't remove it. It also leverages
the `remote-exec` provisioners timeout and retry functionality to wait for ssh to be
available for ansible to work.

If you don't need the functionality of reprovisioning the storage on recreation,
just define the provisioner inside the server resource and remove the null resource.

We are currently enhancing the gridscale terraform provider in a way that makes the
null resource obsolete and general usage of provisioners more straight forward.
