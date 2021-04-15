# Load SSH Public Key From File

This is a small example that shows how to load a SSH public key file from disk with `file()`:

```hcl
resource "gridscale_sshkey" "demo" {
  name   = "demo"
  sshkey = file("/home/john/.ssh/id_rsa.pub")
}
```
