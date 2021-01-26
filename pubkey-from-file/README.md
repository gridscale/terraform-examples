# SSH pubkey from file

This is a small example that shows how to load an SSH public key file from disk with `file()`

```hcl
resource "gridscale_sshkey" "demo" {
  name   = "demo"
  sshkey = file("/home/john/.ssh/id_rsa.pub")
}
```
