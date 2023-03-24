resource "ncloud_vpc" "test-vpc" {
  name            = "test-vpc"
  ipv4_cidr_block = "10.0.0.0/16"
}

resource "ncloud_subnet" "test-subnet" {
  name           = "test-subnet"
  vpc_no         = ncloud_vpc.test-vpc.id
  subnet         = cidrsubnet(ncloud_vpc.test-vpc.ipv4_cidr_block, 8, 0)
  // "10.0.0.0/24"
  zone           = "KR-2"
  network_acl_no = ncloud_vpc.test-vpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  // PUBLIC(Public)
}

resource "ncloud_server" "test-server" {
  subnet_no                 = ncloud_subnet.test-subnet.id
  name                      = "test-server"
  server_image_product_code = "SW.VSVR.OS.LNX64.CNTOS.0703.B050"
  login_key_name            = var.LOGIN_KEY_NAME
}

resource "ncloud_public_ip" "test-pubip" {
  server_instance_no = ncloud_server.test-server.id
  description        = "for test-server"
}
