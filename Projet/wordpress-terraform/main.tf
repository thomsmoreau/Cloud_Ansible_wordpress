provider "scaleway" {
  region = "${var.region}"
  organization = "${var.organization}"
  token        = "${var.scw_token}"
}

data "scaleway_image" "terraform_thomas" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "terraform_thomas" {
  name  = "terraform_thomas"
  image = "${data.scaleway_image.terraform_thomas.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.terraform_thomas.id}"
}


resource "scaleway_volume" "terraform_thomas" {
  name       = "terraform_thomas_volume"
  size_in_gb = 50
  type       = "l_ssd"
}
