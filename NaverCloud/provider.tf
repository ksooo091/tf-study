provider "ncloud" {
  support_vpc = true
  region      = "KR"
  access_key  = var.ACCESS_KEY_ID
  secret_key  = var.SECRET_KEY
}
