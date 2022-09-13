resource "random_pet" "rd_pet" {
  length = 2
}

resource "random_password" "rd_password" {
  length  = 10
  special = false
  upper   = false
}

resource "random_integer" "rd_integer" {
  min = 100
  max = 999
}

