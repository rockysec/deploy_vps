resource "digitalocean_droplet" "appnode" {
    image = "debian-10-x64"
    name = "rockysec-scannode-1"
    region = "nyc3"
    size = "s-1vcpu-1gb"
    private_networking = true
    ssh_keys = [
      var.ssh_fingerprint
    ]

connection {
host = self.ipv4_address
user = "root"
type = "ssh"
private_key = file(var.pvt_key)
timeout = "2m"
}

provisioner "remote-exec" {
inline = [
"export PATH=$PATH:/usr/bin",
# install tools
# replace github repo with your own repo tools
"apt-get update",
"apt-get install git -y",
"git clone https://github.com/username/ServerTools",
"bash ServerTools/install.sh"
]
}
}
