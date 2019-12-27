provider "gridscale" {}

resource "gridscale_server" "simple-server"{
	name = "demo-simple-server"
	cores = 1
	memory = 2
}
