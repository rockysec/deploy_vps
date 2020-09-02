variable "do_token" {
  description = "API Token Digital Occean"
}
variable "pub_key" {
  description = "Public key"
  default = "~/.ssh/terraform/id_rsa.pub"
}
variable "pvt_key" {
  description = "Public key"
  default = "~/.ssh/terraform/id_rsa"
}
variable "ssh_fingerprint" {
  description = "Public key"
  default = "xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
}
provider "digitalocean" {
  token = var.do_token
}
